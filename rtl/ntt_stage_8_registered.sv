module ntt_stage_8_registered #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
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
  output reg [31:0] out0,
  output reg [31:0] out1,
  output reg [31:0] out2,
  output reg [31:0] out3,
  output reg [31:0] out4,
  output reg [31:0] out5,
  output reg [31:0] out6,
  output reg [31:0] out7
);

  wire [31:0] comb_out0;
  wire [31:0] comb_out1;
  wire [31:0] comb_out2;
  wire [31:0] comb_out3;
  wire [31:0] comb_out4;
  wire [31:0] comb_out5;
  wire [31:0] comb_out6;
  wire [31:0] comb_out7;

  ntt_stage_8 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage8_comb (
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .in4(in4),
    .in5(in5),
    .in6(in6),
    .in7(in7),
    .twiddle0(twiddle0),
    .twiddle1(twiddle1),
    .twiddle2(twiddle2),
    .twiddle3(twiddle3),
    .out0(comb_out0),
    .out1(comb_out1),
    .out2(comb_out2),
    .out3(comb_out3),
    .out4(comb_out4),
    .out5(comb_out5),
    .out6(comb_out6),
    .out7(comb_out7)
  );

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      out0 <= 0;
      out1 <= 0;
      out2 <= 0;
      out3 <= 0;
      out4 <= 0;
      out5 <= 0;
      out6 <= 0;
      out7 <= 0;
    end else begin
      out0 <= comb_out0;
      out1 <= comb_out1;
      out2 <= comb_out2;
      out3 <= comb_out3;
      out4 <= comb_out4;
      out5 <= comb_out5;
      out6 <= comb_out6;
      out7 <= comb_out7;
    end
  end

endmodule
