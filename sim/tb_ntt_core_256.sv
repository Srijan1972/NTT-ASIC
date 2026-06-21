`timescale 1ns/1ps

module tb_ntt_core_256;

  reg clk;
  reg rst_n;
  reg start;
  reg load_data_en;
  reg [7:0] load_data_addr;
  reg [31:0] load_data;
  reg load_bitrev_en;
  reg [7:0] load_bitrev_addr;
  reg [7:0] load_bitrev;
  reg load_twiddle_en;
  reg [7:0] load_twiddle_addr;
  reg [31:0] load_twiddle;
  reg [7:0] read_addr;
  wire [31:0] read_data;
  wire busy;
  wire done;

  reg [31:0] input_vec [0:255];
  reg [31:0] expected_vec [0:255];
  reg [31:0] twiddle_vec [0:254];
  reg [31:0] bitrev_vec [0:255];

  integer i;
  integer errors;
  integer timeout_cycles;

  ntt_core_256 dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .load_data_en(load_data_en),
    .load_data_addr(load_data_addr),
    .load_data(load_data),
    .load_bitrev_en(load_bitrev_en),
    .load_bitrev_addr(load_bitrev_addr),
    .load_bitrev(load_bitrev),
    .load_twiddle_en(load_twiddle_en),
    .load_twiddle_addr(load_twiddle_addr),
    .load_twiddle(load_twiddle),
    .read_addr(read_addr),
    .read_data(read_data),
    .busy(busy),
    .done(done)
  );

  always #5 clk = ~clk;

  task load_data_word;
    input [7:0] addr;
    input [31:0] value;
    begin
      @(posedge clk);
      load_data_addr = addr;
      load_data = value;
      load_data_en = 1;
      @(posedge clk);
      load_data_en = 0;
    end
  endtask

  task load_bitrev_word;
    input [7:0] addr;
    input [7:0] value;
    begin
      @(posedge clk);
      load_bitrev_addr = addr;
      load_bitrev = value;
      load_bitrev_en = 1;
      @(posedge clk);
      load_bitrev_en = 0;
    end
  endtask

  task load_twiddle_word;
    input [7:0] addr;
    input [31:0] value;
    begin
      @(posedge clk);
      load_twiddle_addr = addr;
      load_twiddle = value;
      load_twiddle_en = 1;
      @(posedge clk);
      load_twiddle_en = 0;
    end
  endtask

  initial begin
    $readmemh("sim/test_vectors/input_256.hex", input_vec);
    $readmemh("sim/test_vectors/expected_256.hex", expected_vec);
    $readmemh("sim/test_vectors/twiddles_256.hex", twiddle_vec);
    $readmemh("sim/test_vectors/bitrev_256.hex", bitrev_vec);

    clk = 0;
    rst_n = 0;
    start = 0;
    load_data_en = 0;
    load_data_addr = 0;
    load_data = 0;
    load_bitrev_en = 0;
    load_bitrev_addr = 0;
    load_bitrev = 0;
    load_twiddle_en = 0;
    load_twiddle_addr = 0;
    load_twiddle = 0;
    read_addr = 0;
    errors = 0;
    timeout_cycles = 0;

    repeat (5) @(posedge clk);
    rst_n = 1;

    for (i = 0; i < 256; i = i + 1) begin
      load_data_word(i[7:0], input_vec[i]);
      load_bitrev_word(i[7:0], bitrev_vec[i][7:0]);
    end

    for (i = 0; i < 255; i = i + 1) begin
      load_twiddle_word(i[7:0], twiddle_vec[i]);
    end

    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    while (!done && timeout_cycles < 300000) begin
      @(posedge clk);
      timeout_cycles = timeout_cycles + 1;
    end

    if (!done) begin
      $display("FAIL: tb_ntt_core_256 timed out");
      $finish;
    end

    for (i = 0; i < 256; i = i + 1) begin
      read_addr = i[7:0];
      #1;
      if (read_data !== expected_vec[i]) begin
        $display("Mismatch index %0d got %0d expected %0d", i, read_data, expected_vec[i]);
        errors = errors + 1;
      end
    end

    if (errors == 0) begin
      $display("PASS: tb_ntt_core_256");
    end else begin
      $display("FAIL: tb_ntt_core_256 errors=%0d", errors);
    end
    $finish;
  end

endmodule
