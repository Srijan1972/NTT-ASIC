
`default_nettype none

module ntt_butterfly_ct (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               in_valid,
    input  wire               mode,   
    input  wire signed [31:0] a,
    input  wire signed [31:0] b,
    input  wire signed [31:0] zeta,
    output wire               out_valid,
    output wire signed [31:0] out_a,
    output wire signed [31:0] out_b
);
    localparam MODMUL_LAT = 6;

    wire signed [31:0] mm_b = mode ? (a - b) : b;

    wire               mm_valid;
    wire signed [31:0] t;
    modmul_solinas u_mm (
        .clk(clk), .rst_n(rst_n), .in_valid(in_valid),
        .a(zeta), .b(mm_b),
        .out_valid(mm_valid), .p(t)
    );

    reg signed [31:0] a_d [0:MODMUL_LAT-1];
    reg signed [31:0] b_d [0:MODMUL_LAT-1];
    integer k;
    always @(posedge clk) begin
        a_d[0] <= a;
        b_d[0] <= b;
        for (k = 1; k < 6; k = k + 1) begin  
            a_d[k] <= a_d[k-1];
            b_d[k] <= b_d[k-1];
        end
    end
    wire signed [31:0] a_al = a_d[MODMUL_LAT-1];
    wire signed [31:0] b_al = b_d[MODMUL_LAT-1];

    reg signed [31:0] oa_r, ob_r;
    always @(posedge clk) begin
        oa_r <= mode ? (a_al + b_al) : (a_al + t);
        ob_r <= mode ? t             : (a_al - t);
    end

    reg vld_r;
    always @(posedge clk or negedge rst_n)
        if (!rst_n) vld_r <= 1'b0;
        else        vld_r <= mm_valid;

    assign out_a     = oa_r;
    assign out_b     = ob_r;
    assign out_valid = vld_r;
`ifdef ANT_DIODES
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_1   (.DIODE(oa_r[1]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_5   (.DIODE(oa_r[5]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_10  (.DIODE(oa_r[10]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_17  (.DIODE(oa_r[17]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_19  (.DIODE(oa_r[19]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_21  (.DIODE(oa_r[21]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_oa_r_28  (.DIODE(oa_r[28]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_ob_r_21  (.DIODE(ob_r[21]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_5      (.DIODE(t[5]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_13     (.DIODE(t[13]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_19     (.DIODE(t[19]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_24     (.DIODE(t[24]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_30     (.DIODE(t[30]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_t_31     (.DIODE(t[31]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_a_al_11  (.DIODE(a_al[11]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_mm_b_0   (.DIODE(mm_b[0]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_mm_b_8   (.DIODE(mm_b[8]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_mm_b_14  (.DIODE(mm_b[14]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_mm_b_19  (.DIODE(mm_b[19]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_b_al_21  (.DIODE(b_al[21]));
`endif

endmodule

`default_nettype wire
