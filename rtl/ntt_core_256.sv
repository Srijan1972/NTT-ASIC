module ntt_core_256 #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
  input clk,
  input rst_n,
  input start,

  input load_data_en,
  input [7:0] load_data_addr,
  input [31:0] load_data,

  input load_bitrev_en,
  input [7:0] load_bitrev_addr,
  input [7:0] load_bitrev,

  input load_twiddle_en,
  input [7:0] load_twiddle_addr,
  input [31:0] load_twiddle,

  input [7:0] read_addr,
  output [31:0] read_data,
  output reg busy,
  output reg done
);

  localparam STATE_IDLE      = 4'd0;
  localparam STATE_PERMUTE   = 4'd1;
  localparam STATE_ISSUE     = 4'd2;
  localparam STATE_WAIT      = 4'd3;
  localparam STATE_WRITE     = 4'd4;
  localparam STATE_NEXT      = 4'd5;
  localparam STATE_COPY_OUT  = 4'd6;
  localparam STATE_DONE      = 4'd7;

  reg [3:0] state;

  reg [31:0] input_mem [0:255];
  reg [31:0] ping_mem  [0:255];
  reg [31:0] pong_mem  [0:255];
  reg [31:0] twiddle_mem [0:254];
  reg [7:0] bitrev_mem [0:255];

  reg use_ping_as_input;
  reg [7:0] permute_idx;
  reg [7:0] copy_idx;
  reg [7:0] step;
  reg [7:0] length;
  reg [7:0] offset;
  reg [2:0] stage;
  reg [7:0] idx1;
  reg [7:0] idx2;
  reg [7:0] twiddle_idx;

  reg butterfly_start;
  wire butterfly_done;
  wire [31:0] butterfly_out_a;
  wire [31:0] butterfly_out_b;

  wire [7:0] current_j = step & (length - 8'd1);
  wire [7:0] current_i = (step >> stage) << (stage + 3'd1);

  wire [31:0] butterfly_u = use_ping_as_input ? ping_mem[idx1] : pong_mem[idx1];
  wire [31:0] butterfly_v = use_ping_as_input ? ping_mem[idx2] : pong_mem[idx2];
  wire [31:0] butterfly_twiddle = twiddle_mem[twiddle_idx];

  assign read_data = use_ping_as_input ? ping_mem[read_addr] : pong_mem[read_addr];

  ntt_butterfly #(
    .Q(Q),
    .Q_INV(Q_INV)
  ) butterfly_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(butterfly_start),
    .u(butterfly_u),
    .v(butterfly_v),
    .twiddle(butterfly_twiddle),
    .out_a(butterfly_out_a),
    .out_b(butterfly_out_b),
    .done(butterfly_done)
  );

  integer i;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= STATE_IDLE;
      busy <= 0;
      done <= 0;
      use_ping_as_input <= 1;
      permute_idx <= 0;
      copy_idx <= 0;
      step <= 0;
      length <= 1;
      offset <= 0;
      stage <= 0;
      idx1 <= 0;
      idx2 <= 0;
      twiddle_idx <= 0;
      butterfly_start <= 0;
      /* verilator lint_off BLKSEQ */
      for (i = 0; i < 256; i = i + 1) begin
        input_mem[i] = 0;
        ping_mem[i] = 0;
        pong_mem[i] = 0;
        bitrev_mem[i] = 0;
      end
      for (i = 0; i < 255; i = i + 1) begin
        twiddle_mem[i] = 0;
      end
      /* verilator lint_on BLKSEQ */
    end else begin
      butterfly_start <= 0;

      case (state)
        STATE_IDLE: begin
          busy <= 0;
          done <= 0;

          if (load_data_en) begin
            input_mem[load_data_addr] <= load_data;
          end

          if (load_bitrev_en) begin
            bitrev_mem[load_bitrev_addr] <= load_bitrev;
          end

          if (load_twiddle_en) begin
            twiddle_mem[load_twiddle_addr] <= load_twiddle;
          end

          if (start) begin
            busy <= 1;
            done <= 0;
            use_ping_as_input <= 1;
            permute_idx <= 0;
            step <= 0;
            length <= 1;
            offset <= 0;
            stage <= 0;
            state <= STATE_PERMUTE;
          end
        end

        STATE_PERMUTE: begin
          ping_mem[permute_idx] <= input_mem[bitrev_mem[permute_idx]];
          if (permute_idx == 8'd255) begin
            step <= 0;
            state <= STATE_ISSUE;
          end else begin
            permute_idx <= permute_idx + 1'b1;
          end
        end

        STATE_ISSUE: begin
          idx1 <= current_i + current_j;
          idx2 <= current_i + length + current_j;
          twiddle_idx <= offset + current_j;
          butterfly_start <= 1;
          state <= STATE_WAIT;
        end

        STATE_WAIT: begin
          if (butterfly_done) begin
            state <= STATE_WRITE;
          end
        end

        STATE_WRITE: begin
          if (use_ping_as_input) begin
            pong_mem[idx1] <= butterfly_out_a;
            pong_mem[idx2] <= butterfly_out_b;
          end else begin
            ping_mem[idx1] <= butterfly_out_a;
            ping_mem[idx2] <= butterfly_out_b;
          end
          state <= STATE_NEXT;
        end

        STATE_NEXT: begin
          if (step == 8'd127) begin
            step <= 0;
            offset <= offset + length;
            use_ping_as_input <= ~use_ping_as_input;
            if (length == 8'd128) begin
              copy_idx <= 0;
              state <= STATE_COPY_OUT;
            end else begin
              length <= length << 1;
              stage <= stage + 1'b1;
              state <= STATE_ISSUE;
            end
          end else begin
            step <= step + 1'b1;
            state <= STATE_ISSUE;
          end
        end

        STATE_COPY_OUT: begin
          if (use_ping_as_input) begin
            ping_mem[copy_idx] <= ping_mem[copy_idx];
          end else begin
            pong_mem[copy_idx] <= pong_mem[copy_idx];
          end
          if (copy_idx == 8'd255) begin
            busy <= 0;
            done <= 1;
            state <= STATE_DONE;
          end else begin
            copy_idx <= copy_idx + 1'b1;
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
        end
      endcase
    end
  end

endmodule
