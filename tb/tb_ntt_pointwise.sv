// ============================================================================
//  tb_ntt_pointwise.sv -- end-to-end flow test: load -> NTT -> COPY -> MAC,
//  L=2 accumulation plus the squaring-bypass case, compared bit-exact
//  against the golden composition (gen_pointwise_vectors.py).
// ============================================================================
`timescale 1ns/1ps

module tb_ntt_pointwise;

    localparam int N = 256;
    localparam [2:0] OP_NTT = 3'd0, OP_COPY = 3'd1, OP_MAC = 3'd2;

    reg clk = 0, rst_n = 0, start = 0;
    reg [2:0] op = 0;
    reg [1:0] slot_a = 0, slot_b = 0, slot_c = 0;
    reg mac_init = 0;
    reg        ext_we = 0, ext_re = 0;
    reg [1:0]  ext_wslot = 0, ext_rslot = 0;
    reg [7:0]  ext_waddr = 0, ext_raddr = 0;
    reg [31:0] ext_wdata = 0;
    wire busy, done, ext_rvalid;
    wire [31:0] ext_rdata;

    // zeta boot-load
    reg        zload_we = 0;
    reg [8:0]  zload_addr = 0;
    reg [31:0] zload_data = 0;
    reg [31:0] zimg_e [0:255];
    reg [31:0] zimg_o [0:255];

    // 512-write boot-load of the paired zeta store (silicon-faithful:
    // same port the management core drives; rows 128..255 are the
    // NEGATED bank; images proven by golden/dilithium_zeta_sram.py)
    task load_zetas;
        integer zk, zrow;
        begin
            $readmemh("golden/test_vectors/zeta_even.hex", zimg_e);
            $readmemh("golden/test_vectors/zeta_odd.hex",  zimg_o);
            for (zk = 0; zk < 512; zk = zk + 1) begin
                @(negedge clk);
                zrow = ((zk >> 8) << 7) | ((zk & 255) >> 1);
                zload_we   <= 1;
                zload_addr <= zk[8:0];
                zload_data <= zk[0] ? zimg_o[zrow] : zimg_e[zrow];
            end
            @(negedge clk);
            zload_we <= 0;
        end
    endtask

    // Map the legacy sequential stimulus onto the merged engine channel.
    wire        mem_we     = ext_we | zload_we;
    wire        mem_re     = ext_re;
    wire        mem_target = zload_we;
    wire [1:0]  mem_slot   = ext_re ? ext_rslot : ext_wslot;
    wire [8:0]  mem_addr   = zload_we ? zload_addr :
                             ext_re ? {1'b0, ext_raddr} : {1'b0, ext_waddr};
    wire [31:0] mem_wdata  = zload_we ? zload_data : ext_wdata;

    ntt_engine_256 dut (
        .clk(clk), .rst_n(rst_n),
        .start(start), .op(op), .slot_a(slot_a), .slot_b(slot_b),
        .slot_c(slot_c), .mac_init(mac_init), .busy(busy), .done(done),
        .mem_we(mem_we), .mem_re(mem_re), .mem_target(mem_target),
        .mem_slot(mem_slot), .mem_addr(mem_addr), .mem_wdata(mem_wdata),
        .mem_rdata(ext_rdata), .mem_rvalid(ext_rvalid)
    );

    always #5 clk = ~clk;

    reg [31:0] polys  [0:5*N-1];
    reg [31:0] exp_acc [0:N-1];
    reg [31:0] exp_sq  [0:N-1];

    integer errors;

    task run_op(input [2:0] t_op, input [1:0] sa, input [1:0] sb,
                input [1:0] sc, input t_init);
        integer guard;
        begin
            @(negedge clk);
            op <= t_op; slot_a <= sa; slot_b <= sb; slot_c <= sc;
            mac_init <= t_init; start <= 1;
            @(negedge clk);
            start <= 0;
            guard = 0;
            while (!done) begin
                @(posedge clk);
                guard = guard + 1;
                if (guard > 10000) begin
                    $display("FAIL: op %0d hang", t_op);
                    $finish;
                end
            end
        end
    endtask

    task load_poly(input integer pidx);
        integer i;
        begin
            for (i = 0; i < N; i = i + 1) begin
                @(negedge clk);
                ext_we    <= 1;
                ext_wslot <= 2'd0;
                ext_waddr <= i[7:0];
                ext_wdata <= polys[pidx*N + i];
            end
            @(negedge clk);
            ext_we <= 0;
        end
    endtask

    task check_slot(input [1:0] slot, input integer which); // 0=acc, 1=sq
        integer i;
        reg [31:0] want;
        begin
            for (i = 0; i < N; i = i + 1) begin
                @(negedge clk);
                ext_re    <= 1;
                ext_rslot <= slot;
                ext_raddr <= i[7:0];
                @(posedge clk); #1;
                @(posedge clk); #1;
                ext_re <= 0;
                want = which ? exp_sq[i] : exp_acc[i];
                if (!ext_rvalid || $signed(ext_rdata) !== $signed(want)) begin
                    errors = errors + 1;
                    if (errors <= 10)
                        $display("MISMATCH check %0d addr %0d: got %0d want %0d",
                                 which, i, $signed(ext_rdata), $signed(want));
                end
            end
        end
    endtask

    integer term;
    initial begin
        $readmemh("golden/test_vectors/pw_polys.hex", polys);
        $readmemh("golden/test_vectors/pw_acc.hex",   exp_acc);
        $readmemh("golden/test_vectors/pw_sq.hex",    exp_sq);

        errors = 0;
        rst_n = 0;
        repeat (4) @(posedge clk);
        rst_n = 1;
        load_zetas;
        @(posedge clk);

        // ---- test 1: L=2 accumulation into slot 3 ----
        for (term = 0; term < 2; term = term + 1) begin
            load_poly(term*2 + 0);                         // a_term
            run_op(OP_NTT,  2'd0, 2'd0, 2'd0, 1'b0);
            run_op(OP_COPY, 2'd0, 2'd0, 2'd1, 1'b0);       // slot0 -> slot1
            load_poly(term*2 + 1);                         // b_term
            run_op(OP_NTT,  2'd0, 2'd0, 2'd0, 1'b0);
            run_op(OP_COPY, 2'd0, 2'd0, 2'd2, 1'b0);       // slot0 -> slot2
            run_op(OP_MAC,  2'd1, 2'd2, 2'd3, term == 0);  // acc in slot3
        end
        check_slot(2'd3, 0);
        $display("test 1 (L=2 accumulate) complete: %0d errors", errors);

        // ---- test 2: squaring bypass (slot_b == slot_a) ----
        load_poly(4);
        run_op(OP_NTT,  2'd0, 2'd0, 2'd0, 1'b0);
        run_op(OP_COPY, 2'd0, 2'd0, 2'd1, 1'b0);
        run_op(OP_MAC,  2'd1, 2'd1, 2'd3, 1'b1);           // slot1 o slot1
        check_slot(2'd3, 1);
        $display("test 2 (squaring bypass) complete: %0d errors total", errors);

        if (errors == 0) $display("PASS: tb_ntt_pointwise");
        else             $display("FAIL: tb_ntt_pointwise (%0d errors)", errors);
        $finish;
    end

    initial begin
        #100_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
