module ntt_core_256_sram #(
  parameter Q = 8380417,
  parameter [31:0] Q_INV = 32'd4236238847
) (
`ifdef USE_POWER_PINS
  inout VPWR,
  inout VGND,
`endif
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

  localparam STATE_IDLE          = 5'd0;
  localparam STATE_PERM_BITREV   = 5'd1;
  localparam STATE_PERM_INPUT    = 5'd2;
  localparam STATE_PERM_WRITE    = 5'd3;
  localparam STATE_READ_U        = 5'd4;
  localparam STATE_READ_V        = 5'd5;
  localparam STATE_READ_TWIDDLE  = 5'd6;
  localparam STATE_START_BFLY    = 5'd7;
  localparam STATE_WAIT_BFLY     = 5'd8;
  localparam STATE_WRITE_A       = 5'd9;
  localparam STATE_WRITE_B       = 5'd10;
  localparam STATE_NEXT          = 5'd11;
  localparam STATE_DONE          = 5'd12;

  reg [4:0] state;
  reg use_ping_as_input;
  reg [7:0] permute_idx;
  reg [7:0] step;
  reg [7:0] length;
  reg [7:0] offset;
  reg [2:0] stage;
  reg [7:0] idx1;
  reg [7:0] idx2;
  reg [7:0] twiddle_idx;
  reg [31:0] u_hold;
  reg [31:0] v_hold;

  wire [7:0] next_step = step + 1'b1;
  wire [7:0] next_j = next_step & (length - 8'd1);
  wire [7:0] next_i = (next_step >> stage) << (stage + 3'd1);

  reg input_cs;
  reg input_we;
  reg [7:0] input_addr;
  reg [31:0] input_wdata;
  wire [31:0] input_rdata;

  reg bitrev_cs;
  reg bitrev_we;
  reg [7:0] bitrev_addr;
  reg [7:0] bitrev_wdata;
  wire [7:0] bitrev_rdata;

  reg twiddle_cs;
  reg twiddle_we;
  reg [7:0] twiddle_addr;
  reg [31:0] twiddle_wdata;
  wire [31:0] twiddle_rdata;

  reg ping_cs;
  reg ping_we;
  reg [7:0] ping_addr;
  reg [31:0] ping_wdata;
  wire [31:0] ping_rdata;

  reg pong_cs;
  reg pong_we;
  reg [7:0] pong_addr;
  reg [31:0] pong_wdata;
  wire [31:0] pong_rdata;

  wire [31:0] source_rdata = use_ping_as_input ? ping_rdata : pong_rdata;
  assign read_data = use_ping_as_input ? ping_rdata : pong_rdata;

  wire [31:0] butterfly_out_a;
  wire [31:0] butterfly_out_b;
  wire butterfly_done;
  reg butterfly_start;

  asic_sram_1rw #(.DATA_WIDTH(32), .ADDR_WIDTH(8), .DEPTH(256)) input_sram (
`ifdef USE_POWER_PINS
    .VPWR(VPWR), .VGND(VGND),
`endif
    .clk(clk), .cs(input_cs), .we(input_we), .addr(input_addr), .wdata(input_wdata), .rdata(input_rdata)
  );

  asic_sram_1rw #(.DATA_WIDTH(8), .ADDR_WIDTH(8), .DEPTH(256)) bitrev_sram (
`ifdef USE_POWER_PINS
    .VPWR(VPWR), .VGND(VGND),
`endif
    .clk(clk), .cs(bitrev_cs), .we(bitrev_we), .addr(bitrev_addr), .wdata(bitrev_wdata), .rdata(bitrev_rdata)
  );

  asic_sram_1rw #(.DATA_WIDTH(32), .ADDR_WIDTH(8), .DEPTH(255)) twiddle_sram (
`ifdef USE_POWER_PINS
    .VPWR(VPWR), .VGND(VGND),
`endif
    .clk(clk), .cs(twiddle_cs), .we(twiddle_we), .addr(twiddle_addr), .wdata(twiddle_wdata), .rdata(twiddle_rdata)
  );

  asic_sram_1rw #(.DATA_WIDTH(32), .ADDR_WIDTH(8), .DEPTH(256)) ping_sram (
`ifdef USE_POWER_PINS
    .VPWR(VPWR), .VGND(VGND),
`endif
    .clk(clk), .cs(ping_cs), .we(ping_we), .addr(ping_addr), .wdata(ping_wdata), .rdata(ping_rdata)
  );

  asic_sram_1rw #(.DATA_WIDTH(32), .ADDR_WIDTH(8), .DEPTH(256)) pong_sram (
`ifdef USE_POWER_PINS
    .VPWR(VPWR), .VGND(VGND),
`endif
    .clk(clk), .cs(pong_cs), .we(pong_we), .addr(pong_addr), .wdata(pong_wdata), .rdata(pong_rdata)
  );

  ntt_butterfly #(.Q(Q), .Q_INV(Q_INV)) butterfly_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(butterfly_start),
    .u(u_hold),
    .v(v_hold),
    .twiddle(twiddle_rdata),
    .out_a(butterfly_out_a),
    .out_b(butterfly_out_b),
    .done(butterfly_done)
  );

  always @* begin
    input_cs = 0;
    input_we = 0;
    input_addr = 0;
    input_wdata = 0;
    bitrev_cs = 0;
    bitrev_we = 0;
    bitrev_addr = 0;
    bitrev_wdata = 0;
    twiddle_cs = 0;
    twiddle_we = 0;
    twiddle_addr = 0;
    twiddle_wdata = 0;
    ping_cs = 0;
    ping_we = 0;
    ping_addr = 0;
    ping_wdata = 0;
    pong_cs = 0;
    pong_we = 0;
    pong_addr = 0;
    pong_wdata = 0;

    if (state == STATE_IDLE) begin
      input_cs = load_data_en;
      input_we = load_data_en;
      input_addr = load_data_addr;
      input_wdata = load_data;

      bitrev_cs = load_bitrev_en;
      bitrev_we = load_bitrev_en;
      bitrev_addr = load_bitrev_addr;
      bitrev_wdata = load_bitrev;

      twiddle_cs = load_twiddle_en;
      twiddle_we = load_twiddle_en;
      twiddle_addr = load_twiddle_addr;
      twiddle_wdata = load_twiddle;
    end

    if (state == STATE_PERM_BITREV) begin
      bitrev_cs = 1;
      bitrev_addr = permute_idx;
    end

    if (state == STATE_PERM_INPUT) begin
      input_cs = 1;
      input_addr = bitrev_rdata;
    end

    if (state == STATE_PERM_WRITE) begin
      ping_cs = 1;
      ping_we = 1;
      ping_addr = permute_idx;
      ping_wdata = input_rdata;
    end

    if (state == STATE_READ_U) begin
      if (use_ping_as_input) begin
        ping_cs = 1;
        ping_addr = idx1;
      end else begin
        pong_cs = 1;
        pong_addr = idx1;
      end
    end

    if (state == STATE_READ_V) begin
      if (use_ping_as_input) begin
        ping_cs = 1;
        ping_addr = idx2;
      end else begin
        pong_cs = 1;
        pong_addr = idx2;
      end
    end

    if (state == STATE_READ_TWIDDLE) begin
      twiddle_cs = 1;
      twiddle_addr = twiddle_idx;
    end

    if (state == STATE_WRITE_A) begin
      if (use_ping_as_input) begin
        pong_cs = 1;
        pong_we = 1;
        pong_addr = idx1;
        pong_wdata = butterfly_out_a;
      end else begin
        ping_cs = 1;
        ping_we = 1;
        ping_addr = idx1;
        ping_wdata = butterfly_out_a;
      end
    end

    if (state == STATE_WRITE_B) begin
      if (use_ping_as_input) begin
        pong_cs = 1;
        pong_we = 1;
        pong_addr = idx2;
        pong_wdata = butterfly_out_b;
      end else begin
        ping_cs = 1;
        ping_we = 1;
        ping_addr = idx2;
        ping_wdata = butterfly_out_b;
      end
    end

    if (state == STATE_DONE) begin
      if (use_ping_as_input) begin
        ping_cs = 1;
        ping_addr = read_addr;
      end else begin
        pong_cs = 1;
        pong_addr = read_addr;
      end
    end
  end

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= STATE_IDLE;
      busy <= 0;
      done <= 0;
      use_ping_as_input <= 1;
      permute_idx <= 0;
      step <= 0;
      length <= 1;
      offset <= 0;
      stage <= 0;
      idx1 <= 0;
      idx2 <= 0;
      twiddle_idx <= 0;
      u_hold <= 0;
      v_hold <= 0;
      butterfly_start <= 0;
    end else begin
      butterfly_start <= 0;

      case (state)
        STATE_IDLE: begin
          busy <= 0;
          done <= 0;
          if (start) begin
            busy <= 1;
            use_ping_as_input <= 1;
            permute_idx <= 0;
            step <= 0;
            length <= 1;
            offset <= 0;
            stage <= 0;
            state <= STATE_PERM_BITREV;
          end
        end

        STATE_PERM_BITREV: begin
          state <= STATE_PERM_INPUT;
        end

        STATE_PERM_INPUT: begin
          state <= STATE_PERM_WRITE;
        end

        STATE_PERM_WRITE: begin
          if (permute_idx == 8'd255) begin
            step <= 0;
            idx1 <= 0;
            idx2 <= 1;
            twiddle_idx <= 0;
            state <= STATE_READ_U;
          end else begin
            permute_idx <= permute_idx + 1'b1;
            state <= STATE_PERM_BITREV;
          end
        end

        STATE_READ_U: begin
          state <= STATE_READ_V;
        end

        STATE_READ_V: begin
          u_hold <= source_rdata;
          state <= STATE_READ_TWIDDLE;
        end

        STATE_READ_TWIDDLE: begin
          v_hold <= source_rdata;
          state <= STATE_START_BFLY;
        end

        STATE_START_BFLY: begin
          butterfly_start <= 1;
          state <= STATE_WAIT_BFLY;
        end

        STATE_WAIT_BFLY: begin
          if (butterfly_done) begin
            state <= STATE_WRITE_A;
          end
        end

        STATE_WRITE_A: begin
          state <= STATE_WRITE_B;
        end

        STATE_WRITE_B: begin
          state <= STATE_NEXT;
        end

        STATE_NEXT: begin
          if (step == 8'd127) begin
            step <= 0;
            offset <= offset + length;
            use_ping_as_input <= ~use_ping_as_input;
            if (length == 8'd128) begin
              busy <= 0;
              done <= 1;
              state <= STATE_DONE;
            end else begin
              length <= length << 1;
              stage <= stage + 1'b1;
              idx1 <= 0;
              idx2 <= length << 1;
              twiddle_idx <= offset + length;
              state <= STATE_READ_U;
            end
          end else begin
            step <= step + 1'b1;
            idx1 <= next_i + next_j;
            idx2 <= next_i + length + next_j;
            twiddle_idx <= offset + next_j;
            state <= STATE_READ_U;
          end
        end

        STATE_DONE: begin
          busy <= 0;
          done <= 1;
          if (start) begin
            done <= 0;
            busy <= 1;
            use_ping_as_input <= 1;
            permute_idx <= 0;
            step <= 0;
            length <= 1;
            offset <= 0;
            stage <= 0;
            state <= STATE_PERM_BITREV;
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
