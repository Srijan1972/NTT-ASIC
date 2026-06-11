module ntt_stage_2 #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,
  input  [31:0] in0,
  input  [31:0] in1,
  input  [31:0] twiddle,
  output [31:0] out0,
  output [31:0] out1,
  output done
);

  ntt_butterfly #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) butterfly_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .u(in0),
    .v(in1),
    .twiddle(twiddle),
    .out_a(out0),
    .out_b(out1),
    .done(done)
  );

endmodule
