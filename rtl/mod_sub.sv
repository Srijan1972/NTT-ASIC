`timescale 1ns/1ps

// Modular subtraction for the ASIC NTT RTL blocks.
// Computes result = (a - b) mod Q for inputs already reduced modulo Q.

module mod_sub #(
  parameter [31:0] Q = 32'd8380417
)(
  input  [31:0] a,
  input  [31:0] b,
  output [31:0] result
);
  wire [31:0] wrapped_diff = a + Q - b;
  wire [31:0] plain_diff   = a - b;

  assign result = (a < b) ? wrapped_diff : plain_diff;
endmodule
