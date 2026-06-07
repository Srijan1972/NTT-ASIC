`timescale 1ns/1ps

module tb_ntt_stage_4;

  localparam Q = 8380417;
  localparam [31:0] Q_INV = 32'd4236238847;

  reg  [31:0] in0;
  reg  [31:0] in1;
  reg  [31:0] in2;
  reg  [31:0] in3;
  reg  [31:0] twiddle0;
  reg  [31:0] twiddle1;
  wire [31:0] out0;
  wire [31:0] out1;
  wire [31:0] out2;
  wire [31:0] out3;

  ntt_stage_4 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) dut (
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .twiddle0(twiddle0),
    .twiddle1(twiddle1),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
  );

  task check;
    input [31:0] test_in0;
    input [31:0] test_in1;
    input [31:0] test_in2;
    input [31:0] test_in3;
    input [31:0] test_twiddle0;
    input [31:0] test_twiddle1;
    input [31:0] expected_out0;
    input [31:0] expected_out1;
    input [31:0] expected_out2;
    input [31:0] expected_out3;
    begin
      in0 = test_in0;
      in1 = test_in1;
      in2 = test_in2;
      in3 = test_in3;
      twiddle0 = test_twiddle0;
      twiddle1 = test_twiddle1;
      #1;

      if (out0 !== expected_out0 || out1 !== expected_out1 ||
          out2 !== expected_out2 || out3 !== expected_out3) begin
        $display("FAIL: expected=%0d,%0d,%0d,%0d got=%0d,%0d,%0d,%0d",
                 expected_out0, expected_out1, expected_out2, expected_out3,
                 out0, out1, out2, out3);
        $finish;
      end
    end
  endtask

  initial begin
    in0 = 0;
    in1 = 0;
    in2 = 0;
    in3 = 0;
    twiddle0 = 0;
    twiddle1 = 0;
    #1;

    check(10, 2, 1000, 123, 3, 456,
          7692875, 687562, 544743, 7837674);

    check(8380410, 1, 5, 8380416, 1, 8380416,
          8265818, 114585, 8265830, 114597);

    $display("PASS: tb_ntt_stage_4");
    $finish;
  end

endmodule
