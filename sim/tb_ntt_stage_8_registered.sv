`timescale 1ns/1ps

module tb_ntt_stage_8_registered;

  reg clk;
  reg rst_n;
  reg  [31:0] in0;
  reg  [31:0] in1;
  reg  [31:0] in2;
  reg  [31:0] in3;
  reg  [31:0] in4;
  reg  [31:0] in5;
  reg  [31:0] in6;
  reg  [31:0] in7;
  reg  [31:0] twiddle0;
  reg  [31:0] twiddle1;
  reg  [31:0] twiddle2;
  reg  [31:0] twiddle3;
  wire [31:0] out0;
  wire [31:0] out1;
  wire [31:0] out2;
  wire [31:0] out3;
  wire [31:0] out4;
  wire [31:0] out5;
  wire [31:0] out6;
  wire [31:0] out7;

  ntt_stage_8_registered dut (
    .clk(clk),
    .rst_n(rst_n),
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
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .out4(out4),
    .out5(out5),
    .out6(out6),
    .out7(out7)
  );

  always #5 clk = ~clk;

  task check;
    input [31:0] test_in0;
    input [31:0] test_in1;
    input [31:0] test_in2;
    input [31:0] test_in3;
    input [31:0] test_in4;
    input [31:0] test_in5;
    input [31:0] test_in6;
    input [31:0] test_in7;
    input [31:0] test_twiddle0;
    input [31:0] test_twiddle1;
    input [31:0] test_twiddle2;
    input [31:0] test_twiddle3;
    input [31:0] expected_out0;
    input [31:0] expected_out1;
    input [31:0] expected_out2;
    input [31:0] expected_out3;
    input [31:0] expected_out4;
    input [31:0] expected_out5;
    input [31:0] expected_out6;
    input [31:0] expected_out7;
    begin
      in0 = test_in0;
      in1 = test_in1;
      in2 = test_in2;
      in3 = test_in3;
      in4 = test_in4;
      in5 = test_in5;
      in6 = test_in6;
      in7 = test_in7;
      twiddle0 = test_twiddle0;
      twiddle1 = test_twiddle1;
      twiddle2 = test_twiddle2;
      twiddle3 = test_twiddle3;
      @(posedge clk);
      #1;

      if (out0 !== expected_out0 || out1 !== expected_out1 ||
          out2 !== expected_out2 || out3 !== expected_out3 ||
          out4 !== expected_out4 || out5 !== expected_out5 ||
          out6 !== expected_out6 || out7 !== expected_out7) begin
        $display("FAIL: expected=%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d got=%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d",
                 expected_out0, expected_out1, expected_out2, expected_out3,
                 expected_out4, expected_out5, expected_out6, expected_out7,
                 out0, out1, out2, out3, out4, out5, out6, out7);
        $finish;
      end
    end
  endtask

  initial begin
    clk = 0;
    rst_n = 0;
    in0 = 0;
    in1 = 0;
    in2 = 0;
    in3 = 0;
    in4 = 0;
    in5 = 0;
    in6 = 0;
    in7 = 0;
    twiddle0 = 0;
    twiddle1 = 0;
    twiddle2 = 0;
    twiddle3 = 0;

    repeat (2) @(posedge clk);
    rst_n = 1;
    #1;

    check(10, 2, 1000, 123, 7, 8, 8380410, 1,
          3, 456, 1, 8380416,
          7692875, 687562, 544743, 7837674,
          7463688, 916743, 114585, 8265818);

    check(5, 8380416, 12345, 67890, 8380416, 8380415, 0, 9,
          8380416, 7, 3, 5,
          8265830, 114597, 6786268, 1618839,
          687551, 7692864, 3223777, 5156640);

    $display("PASS: tb_ntt_stage_8_registered");
    $finish;
  end

endmodule
