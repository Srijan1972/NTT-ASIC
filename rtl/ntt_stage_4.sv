module ntt_stage_4 #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input  [31:0] in0,
  input  [31:0] in1,
  input  [31:0] in2,
  input  [31:0] in3,
  input  [31:0] twiddle0,
  input  [31:0] twiddle1,
  output [31:0] out0,
  output [31:0] out1,
  output [31:0] out2,
  output [31:0] out3
);

  ntt_stage_2 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage2_pair0 (
    .in0(in0),
    .in1(in1),
    .twiddle(twiddle0),
    .out0(out0),
    .out1(out1)
  );

  ntt_stage_2 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage2_pair1 (
    .in0(in2),
    .in1(in3),
    .twiddle(twiddle1),
    .out0(out2),
    .out1(out3)
  );

endmodule
