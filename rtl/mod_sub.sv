`timescale 1ns/1ps

// Modular subtraction for the ASIC NTT RTL blocks.
// Computes result = (a - b) mod Q for inputs already reduced modulo Q.

module mod_sub #(
  parameter logic [31:0] Q = 32'd8380417
)(
  input  logic [31:0] a,
  input  logic [31:0] b,
  output logic [31:0] result
);
  wire [32:0] wrapped_diff = {1'b0, a} + {1'b0, Q} - {1'b0, b};
  wire [32:0] plain_diff   = {1'b0, a} - {1'b0, b};

  assign result = (a < b) ? wrapped_diff[31:0] : plain_diff[31:0];
endmodule
