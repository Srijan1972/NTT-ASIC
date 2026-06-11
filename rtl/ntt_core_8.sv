module ntt_core_8 #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,
  input load_data_en,
  input [2:0] load_data_addr,
  input [31:0] load_data,
  input load_twiddle_en,
  input [1:0] load_twiddle_addr,
  input [31:0] load_twiddle,
  input [2:0] read_addr,
  output [31:0] read_data,
  output reg busy,
  output reg done
);

  localparam STATE_IDLE = 2'd0;
  localparam STATE_RUN  = 2'd1;
  localparam STATE_DONE = 2'd2;

  reg [1:0] state;

  reg [31:0] data_mem [0:7];
  reg [31:0] twiddle_mem [0:3];

  wire [31:0] stage_out0;
  wire [31:0] stage_out1;
  wire [31:0] stage_out2;
  wire [31:0] stage_out3;
  wire [31:0] stage_out4;
  wire [31:0] stage_out5;
  wire [31:0] stage_out6;
  wire [31:0] stage_out7;
  reg stage_start;
  wire stage_done;

  assign read_data = data_mem[read_addr];

  ntt_stage_8 #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) stage8_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(stage_start),
    .in0(data_mem[0]),
    .in1(data_mem[1]),
    .in2(data_mem[2]),
    .in3(data_mem[3]),
    .in4(data_mem[4]),
    .in5(data_mem[5]),
    .in6(data_mem[6]),
    .in7(data_mem[7]),
    .twiddle0(twiddle_mem[0]),
    .twiddle1(twiddle_mem[1]),
    .twiddle2(twiddle_mem[2]),
    .twiddle3(twiddle_mem[3]),
    .out0(stage_out0),
    .out1(stage_out1),
    .out2(stage_out2),
    .out3(stage_out3),
    .out4(stage_out4),
    .out5(stage_out5),
    .out6(stage_out6),
    .out7(stage_out7),
    .done(stage_done)
  );

  integer i;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= STATE_IDLE;
      busy <= 0;
      done <= 0;
      stage_start <= 0;
      for (i = 0; i < 8; i = i + 1) begin
        data_mem[i] <= 0;
      end
      for (i = 0; i < 4; i = i + 1) begin
        twiddle_mem[i] <= 0;
      end
    end else begin
      stage_start <= 0;
      case (state)
        STATE_IDLE: begin
          busy <= 0;
          done <= 0;

          if (load_data_en) begin
            data_mem[load_data_addr] <= load_data;
          end

          if (load_twiddle_en) begin
            twiddle_mem[load_twiddle_addr] <= load_twiddle;
          end

          if (start) begin
            busy <= 1;
            stage_start <= 1;
            state <= STATE_RUN;
          end
        end

        STATE_RUN: begin
          if (stage_done) begin
            data_mem[0] <= stage_out0;
            data_mem[1] <= stage_out1;
            data_mem[2] <= stage_out2;
            data_mem[3] <= stage_out3;
            data_mem[4] <= stage_out4;
            data_mem[5] <= stage_out5;
            data_mem[6] <= stage_out6;
            data_mem[7] <= stage_out7;
            busy <= 0;
            done <= 1;
            state <= STATE_DONE;
          end
        end

        STATE_DONE: begin
          busy <= 0;
          done <= 1;
          if (!start) begin
            done <= 0;
            state <= STATE_IDLE;
          end
        end

        default: begin
          state <= STATE_IDLE;
          busy <= 0;
          done <= 0;
          stage_start <= 0;
        end
      endcase
    end
  end

endmodule
