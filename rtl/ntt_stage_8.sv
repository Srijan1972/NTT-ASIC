module ntt_stage_8 #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,
  input  [31:0] in0,
  input  [31:0] in1,
  input  [31:0] in2,
  input  [31:0] in3,
  input  [31:0] in4,
  input  [31:0] in5,
  input  [31:0] in6,
  input  [31:0] in7,
  input  [31:0] twiddle0,
  input  [31:0] twiddle1,
  input  [31:0] twiddle2,
  input  [31:0] twiddle3,
  output [31:0] out0,
  output [31:0] out1,
  output [31:0] out2,
  output [31:0] out3,
  output [31:0] out4,
  output [31:0] out5,
  output [31:0] out6,
  output [31:0] out7,
  output done
);

  wire lower_done;
  wire upper_done;

  ntt_stage_4 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage4_lower (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .twiddle0(twiddle0),
    .twiddle1(twiddle1),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .done(lower_done)
  );

  ntt_stage_4 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage4_upper (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .in0(in4),
    .in1(in5),
    .in2(in6),
    .in3(in7),
    .twiddle0(twiddle2),
    .twiddle1(twiddle3),
    .out0(out4),
    .out1(out5),
    .out2(out6),
    .out3(out7),
    .done(upper_done)
  );

  assign done = lower_done & upper_done;

endmodule
