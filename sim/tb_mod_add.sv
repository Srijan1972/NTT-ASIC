`timescale 1ns/1ps

module tb_mod_add;
  localparam logic [31:0] Q = 32'd8380417;

  logic [31:0] a;
  logic [31:0] b;
  logic [31:0] result;

  mod_add #(
    .Q(Q)
  ) dut (
    .a(a),
    .b(b),
    .result(result)
  );

  task automatic check(
    input logic [31:0] ta,
    input logic [31:0] tb,
    input logic [31:0] expected
  );
    begin
      a = ta;
      b = tb;
      #1;
      if (result !== expected) begin
        $display("FAIL: a=%0d b=%0d result=%0d expected=%0d", ta, tb, result, expected);
        $fatal(1);
      end
    end
  endtask

  initial begin
    // No wraparound: 1 + 2 = 3
    check(32'd1, 32'd2, 32'd3);

    // Exactly q should reduce to 0.
    check(32'd8380416, 32'd1, 32'd0);

    // Greater than q should subtract q once.
    check(32'd8380416, 32'd2, 32'd1);

    // Ordinary value below q.
    check(32'd1234567, 32'd7654321, 32'd508471);

    $display("PASS: tb_mod_add");
    $finish;
  end
endmodule
