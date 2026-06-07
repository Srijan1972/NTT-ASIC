module ntt_butterfly #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input  [31:0] u,
  input  [31:0] v,
  input  [31:0] twiddle,
  output [31:0] out_a,
  output [31:0] out_b
);

  wire [31:0] t;

  modmul_montgomery #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) mul_inst (
    .a(v),
    .b(twiddle),
    .result(t)
  );

  mod_add #(
    .Q(Q)
  ) add_inst (
    .a(u),
    .b(t),
    .result(out_a)
  );

  mod_sub #(
    .Q(Q)
  ) sub_inst (
    .a(u),
    .b(t),
    .result(out_b)
  );

endmodule
