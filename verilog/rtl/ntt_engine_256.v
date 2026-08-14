// SPDX-FileCopyrightText: 2026 Srijan1972
// SPDX-License-Identifier: Apache-2.0
// ============================================================================
//  ntt_engine_256.sv -- N=256 Dilithium polynomial engine, MERGED-LAYER
//  radix-2^2 NTT/INTT (two stages per memory pass).
//  Ops:
//    0 NTT    forward NTT, slot 0, 4 passes x 64 groups, in-place
//    1 COPY   slot_a -> slot_c, 4 coefficients/cycle
//    2 MAC    slot_c (+)= slot_a o slot_b (reference pointwise_montgomery
//             semantics; mac_init zeroes the accumulator)
//    3 INTT   inverse NTT + tomont scaling, slot 0 (reference
//             invntt_tomont; REQUIRES |input| < q -- run REDUCE on
//             lazy/accumulated data first)
//    4 REDUCE slot_a -> slot_c with reference reduce32 applied
//
//  Memory: 4 banks x 256 x 32. (slot s, coeff j) -> bank bank_of(j)^s,
//  row {s, row_of(j)}; row_of(j) = j[7:2].
//  bank_of(j) = {o, e}: e = j0^j2^j4^j6, o = j1^j3^j5^j7 (two-bit
//  XOR-fold). The legacy {parity, j[0]} map FAILS merged radix-2^2
//  groups; this map puts every group {j, j+S, j+2S, j+3S} in 4 distinct
//  banks for all pass geometries AND keeps COPY/MAC/scale conflict-free
//  (all re-proven: golden/dilithium_merged_sched.py P1/P5,
//  dilithium_engine_sched.py, dilithium_intt.py, dilithium_pointwise.py).
//
//  Merged pass structure (proof: golden/dilithium_merged_sched.py):
//    forward pass p (stages 2p, 2p+1): S = 2^(6-2p),
//      group {j, j+S, j+2S, j+3S}, parent zeta k = 2^(2p) + b
//      layer 1: BF(d0,d2) and BF(d1,d3), both ZETAS[k]
//      layer 2: BF(x0,x1) ZETAS[2k]; BF(x2,x3) ZETAS[2k+1]
//    inverse pass p (stages 2p, 2p+1): S = 2^(2p),
//      group {j, j+S, j+2S, j+3S}, parent k2 = (255>>(2p+1)) - b
//      layer 1: GS(d0,d1) -ZETAS[2k2+1]; GS(d2,d3) -ZETAS[2k2]
//      layer 2: GS(x0,x2) and GS(x1,x3), both -ZETAS[k2]
//    issue decode (proven vs golden generators, all 512 issues):
//      tb = fwd ? 6-2p : 2p; b = issue>>tb; t = issue & (2^tb - 1);
//      j = (b << (tb+2)) | t
//
//  Zeta store: 2 pair rows read per issue. row_l1 feeds layer 1 at c+1;
//  the layer-2 ROW ADDRESS is delayed BF_LAT cycles in the engine so its
//  data lands at c+1+BF_LAT, exactly when layer-1 results reach layer-2.
//    fwd: row_l1 = k>>1 (lane sel k&1), row_l2 = k
//    inv: row_l1 = k2 (both lanes),     row_l2 = k2>>1 (lane sel k2&1)
//  GS sign is an address bit (negated bank) -- no negate carry chain.
//
//  Pipelines (issue at cycle c):
//    NTT/INTT pass : read c -> layer1 c+1..c+7 -> layer2 c+8..c+14
//                    -> 4 writes end of c+15   (PIPE  = 15)
//    MAC           : read c -> BF(L1A) -> 1 write end of c+8 (PIPE1 = 8)
//    INTT scale    : read c -> BF(L1A/L1B), a=0, zeta=f -> 2 writes c+8
//    COPY/REDUCE   : read c -> write end of c+1
//  DRAIN = 17 after merged passes (> PIPE), 10 otherwise. Port budget /
//  in-place safety proven at PIPE=15 with margin (P5 sweep 8..20).
// ============================================================================
`default_nettype none

module ntt_engine_256 (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        clk,
    input  wire        rst_n,

    // command
    input  wire        start,
    input  wire [2:0]  op,          // see header
    input  wire [1:0]  slot_a,
    input  wire [1:0]  slot_b,
    input  wire [1:0]  slot_c,
    input  wire        mac_init,
    output wire        busy,
    output reg         done,

    // external access, honored only when not busy
    input  wire        ext_we,
    input  wire [1:0]  ext_wslot,
    input  wire [7:0]  ext_waddr,
    input  wire [31:0] ext_wdata,
    input  wire        ext_re,
    input  wire [1:0]  ext_rslot,
    input  wire [7:0]  ext_raddr,
    output wire [31:0] ext_rdata,
    output reg         ext_rvalid,

    // zeta boot-load port (paired SRAM twiddle store; honored only when
    // not busy; 512 writes {neg,k} before the first NTT/INTT command)
    input  wire        zload_we,
    input  wire [8:0]  zload_addr,   // {neg, k}: +/-ZETAS
    input  wire [31:0] zload_data
);
    localparam PIPE1    = 8;    // read + 1 butterfly (MAC, scale writes)
    localparam PIPE     = 15;   // read + 2 chained butterflies (merged)
    localparam DRAIN_BF = 17;   // after merged passes (must be > PIPE)
    localparam DRAIN    = 10;   // after MAC / scale / COPY / REDUCE

    localparam [2:0] OP_NTT = 3'd0, OP_COPY = 3'd1, OP_MAC = 3'd2,
                     OP_INTT = 3'd3, OP_REDUCE = 3'd4;

    localparam signed [31:0] F_TOMONT = 32'sd41978;  // mont^2/256 mod q

    // two-bit XOR-fold bank map (canonical: golden/dilithium_engine_sched.py)
    function automatic [1:0] bank_of(input [7:0] a);
        bank_of = {a[1]^a[3]^a[5]^a[7], a[0]^a[2]^a[4]^a[6]};
    endfunction

    function automatic [5:0] row_of(input [7:0] a);
        row_of = a[7:2];
    endfunction

    // reference reduce32, t*q via the Solinas shift-add
    function automatic signed [31:0] reduce32(input signed [31:0] x);
        reg signed [31:0] t;
        begin
            t = (x + 32'sd4194304) >>> 23;
            reduce32 = x - ((t <<< 23) - (t <<< 13) + t);
        end
    endfunction

    // ------------------------------------------------------------------
    // command latch + FSM
    // ------------------------------------------------------------------
    localparam [1:0] S_IDLE = 2'd0, S_RUN = 2'd1, S_DRAIN = 2'd2;
    reg [1:0]  state;
    reg [2:0]  op_r;
    reg [1:0]  sa_r, sb_r, sc_r;
    reg        init_r;

    reg [2:0]  stage;        // NTT: pass 0..3; INTT: pass 0..3 + 4 = scale
    reg [7:0]  issue;
    reg [4:0]  drain_cnt;

    wire is_ntt    = (op_r == OP_NTT);
    wire is_intt   = (op_r == OP_INTT);
    wire is_mac    = (op_r == OP_MAC);
    wire is_copyish= (op_r == OP_COPY) || (op_r == OP_REDUCE);
    wire is_scale  = is_intt && (stage == 3'd4);
    wire is_merged = (is_ntt || is_intt) && !is_scale;

    wire [1:0] pass = stage[1:0];

    wire [7:0] issue_last = is_mac   ? 8'd255 :
                            is_scale ? 8'd127 : 8'd63;
    wire       op_finished = is_ntt  ? (stage == 3'd3) :
                             is_intt ? (stage == 3'd4) : 1'b1;
    wire [4:0] drain_val = is_merged ? DRAIN_BF[4:0] : DRAIN[4:0];

    assign busy = (state != S_IDLE);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE; stage <= 3'd0; issue <= 8'd0;
            drain_cnt <= 5'd0; done <= 1'b0;
            op_r <= OP_NTT; sa_r <= 2'd0; sb_r <= 2'd0; sc_r <= 2'd0; init_r <= 1'b0;
        end else begin
            case (state)
                S_IDLE: if (start) begin
                    state <= S_RUN; stage <= 3'd0; issue <= 8'd0; done <= 1'b0;
                    op_r <= op; sa_r <= slot_a; sb_r <= slot_b; sc_r <= slot_c;
                    init_r <= mac_init;
                end
                S_RUN: begin
                    if (issue == issue_last) begin
                        issue <= 8'd0;
                        state <= S_DRAIN;
                        drain_cnt <= drain_val - 5'd1;
                    end else begin
                        issue <= issue + 8'd1;
                    end
                end
                S_DRAIN: begin
                    if (drain_cnt == 5'd0) begin
                        if (!op_finished) begin
                            stage <= stage + 3'd1;
                            state <= S_RUN;
                        end else begin
                            state <= S_IDLE; done <= 1'b1;
                        end
                    end else drain_cnt <= drain_cnt - 5'd1;
                end
                default: state <= S_IDLE;
            endcase
        end
    end

    wire issue_valid = (state == S_RUN);
    wire bf_issue    = issue_valid && (is_ntt || is_intt || is_mac);
    wire cp_issue    = issue_valid && is_copyish;

    // ------------------------------------------------------------------
    // merged-pass group address / zeta generation
    //   proven decode: tb = fwd ? 6-2p : 2p; b = issue >> tb;
    //   t = issue & (2^tb - 1); j = (b << (tb+2)) | t; group step 2^tb
    // ------------------------------------------------------------------
    wire [2:0] tb   = is_intt ? {pass, 1'b0} : (3'd6 - {pass, 1'b0});
    wire [7:0] gstep = 8'd1 << tb;
    wire [7:0] gb   = issue >> tb;
    wire [7:0] gt   = issue & (gstep - 8'd1);
    wire [7:0] gj   = (gb << (tb + 3'd2)) | gt;

    // parent zeta index (7 bits used; fwd k in 1..127, inv k2 in 1..127)
    wire [7:0] par_fwd = (8'd1 << (3'd6 - tb)) + gb;
    wire [7:0] par_inv = (8'd255 >> (tb + 3'd1)) - gb;
    wire [7:0] parent  = is_intt ? par_inv : par_fwd;

    // group addresses (also carries scale-stage j0/j1 in lanes 0/2)
    wire [7:0] sj0 = {issue[6:0], 1'b0};
    wire [7:0] sj1 = {issue[6:0], 1'b1};

    wire [7:0] i0 = is_scale ? sj0 : gj;
    wire [7:0] i1 = gj + gstep;
    wire [7:0] i2 = is_scale ? sj1 : (gj + (gstep << 1));
    wire [7:0] i3 = gj + (gstep << 1) + gstep;

    // ------------------------------------------------------------------
    // read routing
    // ------------------------------------------------------------------
    wire [7:0] op_addr [0:3];
    assign op_addr[0] = i0;
    assign op_addr[1] = i1;
    assign op_addr[2] = i2;
    assign op_addr[3] = i3;

    wire [7:0] cp_addr [0:3];
    assign cp_addr[0] = {issue[5:0], 2'b00};
    assign cp_addr[1] = {issue[5:0], 2'b01};
    assign cp_addr[2] = {issue[5:0], 2'b10};
    assign cp_addr[3] = {issue[5:0], 2'b11};

    wire [7:0] mj = issue;
    wire [1:0] mac_ba = bank_of(mj) ^ sa_r;
    wire [1:0] mac_bb = bank_of(mj) ^ sb_r;
    wire [1:0] mac_bc = bank_of(mj) ^ sc_r;

    reg [7:0] bank_raddr [0:3];
    integer o;
    always @* begin
        for (o = 0; o < 4; o = o + 1) bank_raddr[o] = 8'd0;
        if (is_ntt || is_intt) begin
            if (is_scale) begin
                bank_raddr[bank_of(i0)] = {2'b00, row_of(i0)};
                bank_raddr[bank_of(i2)] = {2'b00, row_of(i2)};
            end else begin
                for (o = 0; o < 4; o = o + 1)
                    bank_raddr[bank_of(op_addr[o])] = {2'b00, row_of(op_addr[o])};
            end
        end else if (is_copyish) begin
            for (o = 0; o < 4; o = o + 1)
                bank_raddr[bank_of(cp_addr[o]) ^ sa_r] = {sa_r, row_of(cp_addr[o])};
        end else begin // MAC
            bank_raddr[mac_ba] = {sa_r, row_of(mj)};
            if (sb_r != sa_r) bank_raddr[mac_bb] = {sb_r, row_of(mj)};
            if (!init_r)      bank_raddr[mac_bc] = {sc_r, row_of(mj)};
        end
    end

    reg [1:0] op_bank_q [0:3];
    reg [1:0] mac_ba_q, mac_bb_q, mac_bc_q;
    integer o2;
    always @(posedge clk) begin
        for (o2 = 0; o2 < 4; o2 = o2 + 1)
            op_bank_q[o2] <= bank_of(op_addr[o2]);
        mac_ba_q <= mac_ba;
        mac_bb_q <= mac_bb;
        mac_bc_q <= mac_bc;
    end

    // ------------------------------------------------------------------
    // control pipes (depth PIPE = 15; MAC/scale tap at PIPE1 = 8)
    // ------------------------------------------------------------------
    reg           v_pipe   [1:PIPE];
    reg           sc_pipe  [1:PIPE];   // scale-stage flag
    reg           mg_pipe  [1:PIPE];   // merged-pass flag
    reg [7:0]     i0_pipe  [1:PIPE];
    reg [7:0]     i1_pipe  [1:PIPE];
    reg [7:0]     i2_pipe  [1:PIPE];
    reg [7:0]     i3_pipe  [1:PIPE];
    integer p;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (p = 1; p <= 15; p = p + 1) v_pipe[p] <= 1'b0;  // literal = PIPE
        end else begin
            v_pipe[1] <= bf_issue;
            for (p = 2; p <= 15; p = p + 1) v_pipe[p] <= v_pipe[p-1];  // literal = PIPE
        end
    end
    integer p2;
    always @(posedge clk) begin
        i0_pipe[1] <= is_mac ? mj : i0;
        i1_pipe[1] <= i1; i2_pipe[1] <= i2; i3_pipe[1] <= i3;
        sc_pipe[1] <= is_scale;
        mg_pipe[1] <= is_merged;
        for (p2 = 2; p2 <= 15; p2 = p2 + 1) begin  // literal = PIPE
            i0_pipe[p2] <= i0_pipe[p2-1];
            i1_pipe[p2] <= i1_pipe[p2-1];
            i2_pipe[p2] <= i2_pipe[p2-1];
            i3_pipe[p2] <= i3_pipe[p2-1];
            sc_pipe[p2] <= sc_pipe[p2-1];
            mg_pipe[p2] <= mg_pipe[p2-1];
        end
    end

    reg       cp_v_q;
    reg [7:0] cp_addr_q [0:3];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cp_v_q <= 1'b0;
        else        cp_v_q <= cp_issue;
    end
    integer o3;
    always @(posedge clk) begin
        for (o3 = 0; o3 < 4; o3 = o3 + 1) cp_addr_q[o3] <= cp_addr[o3];
    end

    // ------------------------------------------------------------------
    // banks
    // ------------------------------------------------------------------
    wire [31:0] bank_rdata [0:3];
    reg  [7:0]  bank_waddr [0:3];
    reg  [31:0] bank_wdata [0:3];
    reg  [3:0]  bank_we;

    wire [1:0] ext_wbank = bank_of(ext_waddr) ^ ext_wslot;
    wire [1:0] ext_rbank = bank_of(ext_raddr) ^ ext_rslot;
    reg  [1:0] ext_rbank_q;
    always @(posedge clk) begin
        ext_rbank_q <= ext_rbank;
        ext_rvalid  <= ext_re && !busy;
    end
    assign ext_rdata = bank_rdata[ext_rbank_q];

    genvar gb2;
    generate
        for (gb2 = 0; gb2 < 4; gb2 = gb2 + 1) begin : g_banks
            wire        we_i    = busy ? bank_we[gb2]
                                       : (ext_we && ext_wbank == gb2[1:0]);
            wire [7:0]  waddr_i = busy ? bank_waddr[gb2]
                                       : {ext_wslot, row_of(ext_waddr)};
            wire [31:0] wdata_i = busy ? bank_wdata[gb2] : ext_wdata;
            wire [7:0]  raddr_i = busy ? bank_raddr[gb2]
                                       : {ext_rslot, row_of(ext_raddr)};
`ifdef USE_SRAM_MACRO
            asic_sram_1r1w_sky130 u_ram (
`ifdef USE_POWER_PINS
                .vccd1(vccd1), .vssd1(vssd1),
`endif
                .clk(clk),
                .re(1'b1), .raddr(raddr_i), .rdata(bank_rdata[gb2]),
                .we(we_i), .waddr(waddr_i), .wdata(wdata_i)
            );
`else
            bank_ram_1r1w #(.DEPTH(256), .AW(8), .W(32)) u_ram (
                .clk(clk),
                .re(1'b1), .raddr(raddr_i), .rdata(bank_rdata[gb2]),
                .we(we_i), .waddr(waddr_i), .wdata(wdata_i)
            );
`endif
        end
    endgenerate

    // ------------------------------------------------------------------
    // zeta store: layer-1 row read at issue; layer-2 row address delayed
    // BF_LAT (= PIPE1 - 1 = 7) cycles so data lands with layer-1 results
    // ------------------------------------------------------------------
    wire [6:0] row_l1_now = is_intt ? parent[6:0] : parent[7:1];
    wire [6:0] row_l2_raw = is_intt ? parent[7:1] : parent[6:0];

    reg [6:0] drow_pipe [1:7];   // depth = PIPE1 - 1
    integer dz;
    always @(posedge clk) begin
        drow_pipe[1] <= row_l2_raw;
        for (dz = 2; dz <= 7; dz = dz + 1)
            drow_pipe[dz] <= drow_pipe[dz-1];
    end

    // lane-select pipes: fwd layer-1 sel k&1 (1 cycle);
    // inv layer-2 sel k2&1 (PIPE1 cycles)
    reg       psel_q1;
    reg       psel_pipe [1:8];   // depth = PIPE1
    integer sz;
    always @(posedge clk) begin
        psel_q1 <= parent[0];
        psel_pipe[1] <= parent[0];
        for (sz = 2; sz <= 8; sz = sz + 1)  // literal = PIPE1
            psel_pipe[sz] <= psel_pipe[sz-1];
    end

    wire signed [31:0] ze_l1, zo_l1, ze_l2, zo_l2;
    zeta_store u_zstore (
`ifdef USE_POWER_PINS
        .vccd1(vccd1), .vssd1(vssd1),
`endif
        .clk(clk),
        .zwe(zload_we && !busy), .zaddr(zload_addr), .zdata(zload_data),
        .gs_sel(is_intt && !is_scale),   // address-phase sign select
        .row_l1(row_l1_now), .row_l2(drow_pipe[7]),
        .e_l1(ze_l1), .o_l1(zo_l1), .e_l2(ze_l2), .o_l2(zo_l2)
    );

    // ------------------------------------------------------------------
    // read-data unshuffle (cycle c+1), butterfly network
    // ------------------------------------------------------------------
    wire signed [31:0] d0 = bank_rdata[op_bank_q[0]];
    wire signed [31:0] d1 = bank_rdata[op_bank_q[1]];
    wire signed [31:0] d2 = bank_rdata[op_bank_q[2]];
    wire signed [31:0] d3 = bank_rdata[op_bank_q[3]];

    reg [2:0] op_q1;
    reg       init_q1, sb_eq_sa_q1, scale_q1;
    always @(posedge clk) begin
        op_q1       <= op_r;
        init_q1     <= init_r;
        sb_eq_sa_q1 <= (sb_r == sa_r);
        scale_q1    <= is_scale;
    end

    wire signed [31:0] mac_a   = bank_rdata[mac_ba_q];
    wire signed [31:0] mac_b   = sb_eq_sa_q1 ? mac_a : bank_rdata[mac_bb_q];
    wire signed [31:0] mac_acc = init_q1 ? 32'sd0 : bank_rdata[mac_bc_q];

    wire mac_d1   = (op_q1 == OP_MAC);
    wire intt_d1  = (op_q1 == OP_INTT);
    wire gs_d1    = intt_d1 && !scale_q1;
    wire fwd_d1   = !intt_d1;   // during merged NTT (MAC/scale gate elsewhere)

    // layer-1 zetas (data valid c+1). GS negation is in the STORE
    // (negated bank, address-selected): no negate carry chain here.
    //   fwd:  both butterflies ZETAS[parent] = lane sel psel_q1 of row k>>1
    //   inv:  L1A -ZETAS[2k2+1] = o_l1;  L1B -ZETAS[2k2] = e_l1
    wire signed [31:0] z_l1_fwd = psel_q1 ? zo_l1 : ze_l1;
    wire signed [31:0] z_l1a = mac_d1   ? mac_b    :
                               scale_q1 ? F_TOMONT :
                               gs_d1    ? zo_l1    : z_l1_fwd;
    wire signed [31:0] z_l1b = scale_q1 ? F_TOMONT :
                               gs_d1    ? ze_l1    : z_l1_fwd;

    // layer-1 inputs
    //   fwd pairs (d0,d2),(d1,d3); inv pairs (d0,d1),(d2,d3)
    //   MAC:   L1A = (acc, a-hat, b-hat)      scale: L1A/L1B = (0, x, f)
    wire signed [31:0] l1a_a = mac_d1 ? mac_acc : (scale_q1 ? 32'sd0 : d0);
    wire signed [31:0] l1a_b = mac_d1 ? mac_a   :
                               scale_q1 ? d0    :
                               fwd_d1   ? d2    : d1;
    wire signed [31:0] l1b_a = scale_q1 ? 32'sd0 : (fwd_d1 ? d1 : d2);
    wire signed [31:0] l1b_b = scale_q1 ? d2     : d3;

    // butterfly mode: GS only for inverse butterfly stages (scale uses CT
    // form: out_a = 0 + mr(f*x)); stable across drains
    wire bf_mode = gs_d1;

    wire               l1a_ov, l1b_ov;
    wire signed [31:0] l1a_oa, l1a_ob, l1b_oa, l1b_ob;

    ntt_butterfly_ct u_bf_l1a (
        .clk(clk), .rst_n(rst_n), .in_valid(v_pipe[1]), .mode(bf_mode),
        .a(l1a_a), .b(l1a_b), .zeta(z_l1a),
        .out_valid(l1a_ov), .out_a(l1a_oa), .out_b(l1a_ob)
    );
    ntt_butterfly_ct u_bf_l1b (
        .clk(clk), .rst_n(rst_n), .in_valid(v_pipe[1] && !mac_d1), .mode(bf_mode),
        .a(l1b_a), .b(l1b_b), .zeta(z_l1b),
        .out_valid(l1b_ov), .out_a(l1b_oa), .out_b(l1b_ob)
    );

    // layer-1 -> layer-2 lane mapping (group lane space x0..x3)
    //   fwd: L1A -> (x0,x2), L1B -> (x1,x3)
    //   inv: L1A -> (x0,x1), L1B -> (x2,x3)
    wire signed [31:0] x0 = l1a_oa;
    wire signed [31:0] x1 = fwd_d1 ? l1b_oa : l1a_ob;
    wire signed [31:0] x2 = fwd_d1 ? l1a_ob : l1b_oa;
    wire signed [31:0] x3 = l1b_ob;

    // layer-2 zetas (data valid c+PIPE1, from the delayed row read)
    //   fwd: L2C ZETAS[2k] = e_l2, L2D ZETAS[2k+1] = o_l2
    //   inv: both -ZETAS[k2] = lane sel psel_pipe[PIPE1] of row k2>>1
    wire signed [31:0] z_l2_inv = psel_pipe[8] ? zo_l2 : ze_l2;  // literal = PIPE1
    wire signed [31:0] z_l2c = fwd_d1 ? ze_l2 : z_l2_inv;
    wire signed [31:0] z_l2d = fwd_d1 ? zo_l2 : z_l2_inv;

    // layer-2 inputs
    //   fwd pairs (x0,x1),(x2,x3); inv pairs (x0,x2),(x1,x3)
    wire signed [31:0] l2c_a = x0;
    wire signed [31:0] l2c_b = fwd_d1 ? x1 : x2;
    wire signed [31:0] l2d_a = fwd_d1 ? x2 : x1;
    wire signed [31:0] l2d_b = x3;

    wire l2_iv = v_pipe[8] && mg_pipe[8];  // literal = PIPE1

    wire               l2c_ov, l2d_ov;
    wire signed [31:0] l2c_oa, l2c_ob, l2d_oa, l2d_ob;

    ntt_butterfly_ct u_bf_l2c (
        .clk(clk), .rst_n(rst_n), .in_valid(l2_iv), .mode(bf_mode),
        .a(l2c_a), .b(l2c_b), .zeta(z_l2c),
        .out_valid(l2c_ov), .out_a(l2c_oa), .out_b(l2c_ob)
    );
    ntt_butterfly_ct u_bf_l2d (
        .clk(clk), .rst_n(rst_n), .in_valid(l2_iv), .mode(bf_mode),
        .a(l2d_a), .b(l2d_b), .zeta(z_l2d),
        .out_valid(l2d_ov), .out_a(l2d_oa), .out_b(l2d_ob)
    );

    // layer-2 -> write lane mapping (group lane space y0..y3)
    //   fwd: L2C -> (y0,y1), L2D -> (y2,y3)
    //   inv: L2C -> (y0,y2), L2D -> (y1,y3)
    wire signed [31:0] y0 = l2c_oa;
    wire signed [31:0] y1 = fwd_d1 ? l2c_ob : l2d_oa;
    wire signed [31:0] y2 = fwd_d1 ? l2d_oa : l2c_ob;
    wire signed [31:0] y3 = l2d_ob;

    // ------------------------------------------------------------------
    // write stage
    //   merged passes: 4 writes at tap PIPE (y lanes -> group addresses)
    //   scale:         2 writes at tap PIPE1 (L1A/L1B out_a -> lanes 0/2)
    //   MAC:           1 write  at tap PIPE1 (L1A out_a, slot-swizzled)
    // ------------------------------------------------------------------
    wire [7:0] wm_addr [0:3];
    assign wm_addr[0] = i0_pipe[PIPE];
    assign wm_addr[1] = i1_pipe[PIPE];
    assign wm_addr[2] = i2_pipe[PIPE];
    assign wm_addr[3] = i3_pipe[PIPE];

    wire signed [31:0] wm_data [0:3];
    assign wm_data[0] = y0;
    assign wm_data[1] = y1;
    assign wm_data[2] = y2;
    assign wm_data[3] = y3;

    wire w_merged = v_pipe[PIPE]  && mg_pipe[PIPE];
    wire w_scale  = v_pipe[PIPE1] && sc_pipe[PIPE1];
    wire w_mac    = v_pipe[PIPE1];

    integer w;
    always @* begin
        bank_we = 4'b0;
        for (w = 0; w < 4; w = w + 1) begin
            bank_waddr[w] = 8'd0;
            bank_wdata[w] = 32'd0;
        end
        if (op_r == OP_NTT || op_r == OP_INTT) begin
            if (w_scale) begin
                // two writes: out_a of L1A/L1B back to lanes 0/2
                bank_waddr[bank_of(i0_pipe[PIPE1])] = {2'b00, row_of(i0_pipe[PIPE1])};
                bank_wdata[bank_of(i0_pipe[PIPE1])] = l1a_oa;
                bank_we[bank_of(i0_pipe[PIPE1])]    = 1'b1;
                bank_waddr[bank_of(i2_pipe[PIPE1])] = {2'b00, row_of(i2_pipe[PIPE1])};
                bank_wdata[bank_of(i2_pipe[PIPE1])] = l1b_oa;
                bank_we[bank_of(i2_pipe[PIPE1])]    = 1'b1;
            end
            if (w_merged) begin
                for (w = 0; w < 4; w = w + 1) begin
                    bank_waddr[bank_of(wm_addr[w])] = {2'b00, row_of(wm_addr[w])};
                    bank_wdata[bank_of(wm_addr[w])] = wm_data[w];
                    bank_we[bank_of(wm_addr[w])]    = 1'b1;
                end
            end
        end else if (is_copyish) begin
            for (w = 0; w < 4; w = w + 1) begin
                bank_waddr[bank_of(cp_addr_q[w]) ^ sc_r] = {sc_r, row_of(cp_addr_q[w])};
                bank_wdata[bank_of(cp_addr_q[w]) ^ sc_r] =
                    (op_r == OP_REDUCE)
                        ? reduce32(bank_rdata[bank_of(cp_addr_q[w]) ^ sa_r])
                        : bank_rdata[bank_of(cp_addr_q[w]) ^ sa_r];
                bank_we[bank_of(cp_addr_q[w]) ^ sc_r] = cp_v_q;
            end
        end else begin // MAC
            bank_waddr[bank_of(i0_pipe[PIPE1]) ^ sc_r] = {sc_r, row_of(i0_pipe[PIPE1])};
            bank_wdata[bank_of(i0_pipe[PIPE1]) ^ sc_r] = l1a_oa;
            bank_we[bank_of(i0_pipe[PIPE1]) ^ sc_r]    = w_mac;
        end
    end

    // synthesis translate_off
    always @(posedge clk) begin
        if (start && state == S_IDLE && op == OP_MAC && !mac_init &&
            (slot_c == slot_a || slot_c == slot_b))
            $display("ENGINE MISUSE: accumulating MAC requires slot_c distinct from slot_a/slot_b");
        if (start && state == S_IDLE && (op == OP_COPY || op == OP_REDUCE) &&
            slot_c == slot_a)
            $display("ENGINE MISUSE: COPY/REDUCE src slot == dst slot");
        // merged-group banking invariant (golden P1): the 4 group
        // addresses must land in 4 distinct banks under the XOR-fold map
        if (state == S_RUN && is_merged &&
            ((bank_of(i0) == bank_of(i1)) || (bank_of(i0) == bank_of(i2)) ||
             (bank_of(i0) == bank_of(i3)) || (bank_of(i1) == bank_of(i2)) ||
             (bank_of(i1) == bank_of(i3)) || (bank_of(i2) == bank_of(i3))))
            $display("ENGINE MISUSE: merged group bank conflict j=%0d step=%0d",
                     gj, gstep);
    end
    // synthesis translate_on

endmodule

`default_nettype wire
