`timescale 1ns/1ps

// Modular addition for the first ASIC NTT RTL block.
// Computes result = (a + b) mod Q for inputs already reduced modulo Q.

module mod_add #(
  parameter logic [31:0] Q = 32'd8380417
)(
  input  logic [31:0] a,
  input  logic [31:0] b,
  output logic [31:0] result
);
  wire [32:0] sum = {1'b0, a} + {1'b0, b};
  wire [32:0] reduced_sum = sum - {1'b0, Q};

  assign result = (sum >= {1'b0, Q}) ? reduced_sum[31:0] : sum[31:0];
endmodule
