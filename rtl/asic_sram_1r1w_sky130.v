
`default_nettype none

module asic_sram_1r1w_sky130 (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        clk,
    input  wire        re,
    input  wire [7:0]  raddr,
    output wire [31:0] rdata,
    input  wire        we,
    input  wire [7:0]  waddr,
    input  wire [31:0] wdata
);
    wire [31:0] dout0_unused;

    sky130_sram_1kbyte_1rw1r_32x256_8 u_macro (
`ifdef USE_POWER_PINS
        .vccd1  (vccd1),
        .vssd1  (vssd1),
`endif
        .clk0   (clk),
        .csb0   (~we),
        .web0   (~we),
        .wmask0 (4'b1111),
        .addr0  (waddr),
        .din0   (wdata),
        .dout0  (dout0_unused),
        .clk1   (clk),
        .csb1   (~re),
        .addr1  (raddr),
        .dout1  (rdata)
    );
endmodule

`default_nettype wire
