`timescale 1ns/1ps

module tb_ntt_butterfly;

  localparam Q = 8380417;
  localparam [31:0] Q_INV = 32'd4236238847;

  reg  [31:0] u;
  reg  [31:0] v;
  reg  [31:0] twiddle;
  wire [31:0] out_a;
  wire [31:0] out_b;

  ntt_butterfly #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) dut (
    .u(u),
    .v(v),
    .twiddle(twiddle),
    .out_a(out_a),
    .out_b(out_b)
  );

  task check;
    input [31:0] test_u;
    input [31:0] test_v;
    input [31:0] test_twiddle;
    input [31:0] expected_a;
    input [31:0] expected_b;
    begin
      u = test_u;
      v = test_v;
      twiddle = test_twiddle;
      #1;

      if (out_a !== expected_a || out_b !== expected_b) begin
        $display("FAIL: u=%0d v=%0d twiddle=%0d expected_a=%0d got_a=%0d expected_b=%0d got_b=%0d",
                 test_u, test_v, test_twiddle,
                 expected_a, out_a, expected_b, out_b);
        $finish;
      end
    end
  endtask

  initial begin
    u = 0;
    v = 0;
    twiddle = 0;
    #1;

    check(10, 2, 3, 7692875, 687562);
    check(1000, 123, 456, 544743, 7837674);
    check(8380410, 1, 1, 8265818, 114585);
    check(5, 8380416, 8380416, 8265830, 114597);
    check(1234567, 7654321, 2345678, 1657369, 811765);

    $display("PASS: tb_ntt_butterfly");
    $finish;
  end

endmodule
