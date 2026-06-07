module modmul_montgomery #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input  [31:0] a,
  input  [31:0] b,
  output reg [31:0] result
);

  reg [63:0] ab;
  reg [31:0] ab_low;
  reg [31:0] m;
  reg [63:0] mq;
  reg [63:0] sum;
  reg [31:0] t;

  always @* begin
    ab = a * b;
    ab_low = ab[31:0];
    m = ab_low * Q_INV;
    mq = m * Q;
    sum = ab + mq;
    t = sum[63:32];

    if (t >= Q) begin
      result = t - Q;
    end else begin
      result = t;
    end
  end

endmodule
