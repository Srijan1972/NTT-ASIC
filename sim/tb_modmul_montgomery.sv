`timescale 1ns/1ps

module tb_modmul_montgomery;

  localparam Q = 8380417;
  localparam [31:0] Q_INV = 32'd4236238847;

  reg  [31:0] a;
  reg  [31:0] b;
  wire [31:0] result;

  modmul_montgomery #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) dut (
    .a(a),
    .b(b),
    .result(result)
  );

  task check;
    input [31:0] test_a;
    input [31:0] test_b;
    input [31:0] expected;
    begin
      a = test_a;
      b = test_b;
      #1;

      if (result !== expected) begin
        $display("FAIL: a=%0d b=%0d expected=%0d got=%0d",
                 test_a, test_b, expected, result);
        $finish;
      end
    end
  endtask

  initial begin
    a = 0;
    b = 0;
    #1;

    check(0, 0, 0);
    check(1, 1, 8265825);
    check(2, 3, 7692865);
    check(1234567, 7654321, 5801300);
    check(8380416, 8380416, 8265825);

    $display("PASS: tb_modmul_montgomery");
    $finish;
  end

endmodule
