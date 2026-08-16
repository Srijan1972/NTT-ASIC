
`default_nettype none

module asic_sram_1rw1r_sky130 (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        clk,
    // RW port
    input  wire        we0,
    input  wire        re0,
    input  wire [7:0]  waddr0,
    input  wire [7:0]  raddr0,
    input  wire [31:0] wdata0,
    output wire [31:0] rdata0,
    // R port
    input  wire        re1,
    input  wire [7:0]  raddr1,
    output wire [31:0] rdata1
);
    sky130_sram_1kbyte_1rw1r_32x256_8 u_macro (
`ifdef USE_POWER_PINS
        .vccd1  (vccd1),
        .vssd1  (vssd1),
`endif
        .clk0   (clk),
        .csb0   (~(we0 | re0)),
        .web0   (~we0),
        .wmask0 (4'b1111),
        .addr0  (we0 ? waddr0 : raddr0),
        .din0   (wdata0),
        .dout0  (rdata0),
        .clk1   (clk),
        .csb1   (~re1),
        .addr1  (raddr1),
        .dout1  (rdata1)
    );
`ifdef ANT_DIODES
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_1   (.DIODE(rdata0[1]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_6   (.DIODE(rdata0[6]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_8   (.DIODE(rdata0[8]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_27  (.DIODE(rdata0[27]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_28  (.DIODE(rdata0[28]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd0_29  (.DIODE(rdata0[29]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd1_1   (.DIODE(rdata1[1]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd1_6   (.DIODE(rdata1[6]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd1_10  (.DIODE(rdata1[10]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_rd1_11  (.DIODE(rdata1[11]));
`endif

endmodule

`default_nettype wire
