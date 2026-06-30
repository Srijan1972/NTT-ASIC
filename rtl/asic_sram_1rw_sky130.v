`timescale 1ns/1ps
/* verilator lint_off DECLFILENAME */

// Sky130 OpenRAM macro binding for the generic ASIC SRAM wrapper.
// This file is intended for OpenLane only; use asic_sram_1rw.sv for RTL simulation.

module asic_sram_1rw #(
  parameter DATA_WIDTH = 32,
  parameter ADDR_WIDTH = 8,
  parameter DEPTH = 256
) (
`ifdef USE_POWER_PINS
  inout VPWR,
  inout VGND,
`endif
  input clk,
  input cs,
  input we,
  input [ADDR_WIDTH-1:0] addr,
  input [DATA_WIDTH-1:0] wdata,
  output [DATA_WIDTH-1:0] rdata
);

  generate
    if (DATA_WIDTH == 8) begin : gen_8x1024
      wire [7:0] unused_dout1;

      sky130_sram_1kbyte_1rw1r_8x1024_8 sram8 (
`ifdef USE_POWER_PINS
        .vccd1(VPWR),
        .vssd1(VGND),
`endif
        .clk0(clk),
        .csb0(~cs),
        .web0(~we),
        .wmask0(1'b1),
        .addr0({2'b00, addr}),
        .din0(wdata),
        .dout0(rdata),
        .clk1(clk),
        .csb1(1'b1),
        .addr1(10'b0),
        .dout1(unused_dout1)
      );
    end else begin : gen_32x256
      wire [31:0] unused_dout1;

      sky130_sram_1kbyte_1rw1r_32x256_8 sram32 (
`ifdef USE_POWER_PINS
        .vccd1(VPWR),
        .vssd1(VGND),
`endif
        .clk0(clk),
        .csb0(~cs),
        .web0(~we),
        .wmask0(4'b1111),
        .addr0(addr),
        .din0(wdata),
        .dout0(rdata),
        .clk1(clk),
        .csb1(1'b1),
        .addr1(8'b0),
        .dout1(unused_dout1)
      );
    end
  endgenerate

endmodule
