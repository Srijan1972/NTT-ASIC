`timescale 1ns/1ps

// Modular addition for the first ASIC NTT RTL block.
// Computes result = (a + b) mod Q for inputs already reduced modulo Q.

module mod_add #(
  parameter [31:0] Q = 32'd8380417
)(
  input  [31:0] a,
  input  [31:0] b,
  output [31:0] result
);
  wire [32:0] sum = {1'b0, a} + {1'b0, b};

  assign result = (sum >= {1'b0, Q}) ? (sum[31:0] - Q) : sum[31:0];
endmodule
