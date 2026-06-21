module modmul_montgomery #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,
  input  [31:0] a,
  input  [31:0] b,
  output reg [31:0] result,
  output reg busy,
  output reg done
);

  localparam PHASE_AB         = 3'd0;
  localparam PHASE_M          = 3'd1;
  localparam PHASE_MQ         = 3'd2;
  localparam PHASE_FINAL_LOW  = 3'd3;
  localparam PHASE_FINAL_HIGH = 3'd4;
  localparam PHASE_REDUCE     = 3'd5;

  reg [2:0] phase;
  reg [5:0] bit_idx;
  reg step_high;
  reg [31:0] acc_low;
  reg [31:0] acc_high;
  reg [31:0] multiplicand_low;
  reg [31:0] multiplicand_high;
  reg [31:0] multiplier;
  reg [63:0] ab_reg;
  reg [63:0] mq_reg;
  reg carry_reg;
  reg [31:0] t_reg;

  wire [32:0] low_sum =
      {1'b0, acc_low} +
      (multiplier[0] ? {1'b0, multiplicand_low} : 33'd0);
  /* verilator lint_off UNUSED */
  wire [32:0] high_sum =
      {1'b0, acc_high} +
      (multiplier[0] ? {1'b0, multiplicand_high} : 33'd0) +
      {32'd0, carry_reg};
  wire [32:0] final_low_sum =
      {1'b0, ab_reg[31:0]} + {1'b0, mq_reg[31:0]};
  wire [32:0] final_high_sum =
      {1'b0, ab_reg[63:32]} +
      {1'b0, mq_reg[63:32]} +
      {32'd0, carry_reg};
  /* verilator lint_on UNUSED */

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      result <= 0;
      busy <= 0;
      done <= 0;
      phase <= PHASE_AB;
      bit_idx <= 0;
      step_high <= 0;
      acc_low <= 0;
      acc_high <= 0;
      multiplicand_low <= 0;
      multiplicand_high <= 0;
      multiplier <= 0;
      ab_reg <= 0;
      mq_reg <= 0;
      carry_reg <= 0;
      t_reg <= 0;
    end else begin
      done <= 0;

      if (start && !busy) begin
        busy <= 1;
        phase <= PHASE_AB;
        bit_idx <= 0;
        step_high <= 0;
        acc_low <= 0;
        acc_high <= 0;
        multiplicand_low <= a;
        multiplicand_high <= 0;
        multiplier <= b;
      end else if (busy) begin
        case (phase)
          PHASE_AB,
          PHASE_M,
          PHASE_MQ: begin
            if (!step_high) begin
              acc_low <= low_sum[31:0];
              carry_reg <= low_sum[32];
              step_high <= 1;
            end else begin
              acc_high <= high_sum[31:0];
              step_high <= 0;

              if (bit_idx == 6'd31) begin
                bit_idx <= 0;
                acc_low <= 0;
                acc_high <= 0;

                case (phase)
                  PHASE_AB: begin
                    ab_reg <= {high_sum[31:0], acc_low};
                    phase <= PHASE_M;
                    multiplicand_low <= acc_low;
                    multiplicand_high <= 0;
                    multiplier <= Q_INV;
                  end

                  PHASE_M: begin
                    phase <= PHASE_MQ;
                    multiplicand_low <= acc_low;
                    multiplicand_high <= 0;
                    multiplier <= Q;
                  end

                  default: begin
                    mq_reg <= {high_sum[31:0], acc_low};
                    phase <= PHASE_FINAL_LOW;
                  end
                endcase
              end else begin
                bit_idx <= bit_idx + 1'b1;
                multiplicand_low <= multiplicand_low << 1;
                multiplicand_high <= {
                  multiplicand_high[30:0],
                  multiplicand_low[31]
                };
                multiplier <= multiplier >> 1;
              end
            end
          end

          PHASE_FINAL_LOW: begin
            carry_reg <= final_low_sum[32];
            phase <= PHASE_FINAL_HIGH;
          end

          PHASE_FINAL_HIGH: begin
            t_reg <= final_high_sum[31:0];
            phase <= PHASE_REDUCE;
          end

          default: begin
            if (t_reg >= Q) begin
              result <= t_reg - Q;
            end else begin
              result <= t_reg;
            end
            busy <= 0;
            done <= 1;
          end
        endcase
      end
    end
  end

endmodule
