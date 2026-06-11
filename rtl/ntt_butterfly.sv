module ntt_butterfly #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,
  input  [31:0] u,
  input  [31:0] v,
  input  [31:0] twiddle,
  output reg [31:0] out_a,
  output reg [31:0] out_b,
  output reg done
);

  wire [31:0] t;
  wire mul_busy;
  wire mul_done;
  wire [31:0] add_result;
  wire [31:0] sub_result;
  reg [31:0] u_reg;

  modmul_montgomery #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) mul_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .a(v),
    .b(twiddle),
    .result(t),
    .busy(mul_busy),
    .done(mul_done)
  );

  mod_add #(
    .Q(Q)
  ) add_inst (
    .a(u_reg),
    .b(t),
    .result(add_result)
  );

  mod_sub #(
    .Q(Q)
  ) sub_inst (
    .a(u_reg),
    .b(t),
    .result(sub_result)
  );

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      u_reg <= 0;
      out_a <= 0;
      out_b <= 0;
      done <= 0;
    end else begin
      done <= 0;
      if (start && !mul_busy) begin
        u_reg <= u;
      end
      if (mul_done) begin
        out_a <= add_result;
        out_b <= sub_result;
        done <= 1;
      end
    end
  end

endmodule
