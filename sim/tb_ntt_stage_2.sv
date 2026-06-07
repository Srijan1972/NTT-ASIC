`timescale 1ns/1ps

module tb_ntt_stage_2;

  localparam Q = 8380417;
  localparam [31:0] Q_INV = 32'd4236238847;

  reg  [31:0] in0;
  reg  [31:0] in1;
  reg  [31:0] twiddle;
  wire [31:0] out0;
  wire [31:0] out1;

  ntt_stage_2 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) dut (
    .in0(in0),
    .in1(in1),
    .twiddle(twiddle),
    .out0(out0),
    .out1(out1)
  );

  task check;
    input [31:0] test_in0;
    input [31:0] test_in1;
    input [31:0] test_twiddle;
    input [31:0] expected_out0;
    input [31:0] expected_out1;
    begin
      in0 = test_in0;
      in1 = test_in1;
      twiddle = test_twiddle;
      #1;

      if (out0 !== expected_out0 || out1 !== expected_out1) begin
        $display("FAIL: in0=%0d in1=%0d twiddle=%0d expected_out0=%0d got_out0=%0d expected_out1=%0d got_out1=%0d",
                 test_in0, test_in1, test_twiddle,
                 expected_out0, out0, expected_out1, out1);
        $finish;
      end
    end
  endtask

  initial begin
    in0 = 0;
    in1 = 0;
    twiddle = 0;
    #1;

    check(10, 2, 3, 7692875, 687562);
    check(1000, 123, 456, 544743, 7837674);
    check(8380410, 1, 1, 8265818, 114585);
    check(5, 8380416, 8380416, 8265830, 114597);
    check(1234567, 7654321, 2345678, 1657369, 811765);

    $display("PASS: tb_ntt_stage_2");
    $finish;
  end

endmodule
