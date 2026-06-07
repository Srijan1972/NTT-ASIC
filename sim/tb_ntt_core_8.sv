`timescale 1ns/1ps

module tb_ntt_core_8;

  reg clk;
  reg rst_n;
  reg start;
  reg load_data_en;
  reg [2:0] load_data_addr;
  reg [31:0] load_data;
  reg load_twiddle_en;
  reg [1:0] load_twiddle_addr;
  reg [31:0] load_twiddle;
  reg [2:0] read_addr;
  wire [31:0] read_data;
  wire busy;
  wire done;

  ntt_core_8 dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .load_data_en(load_data_en),
    .load_data_addr(load_data_addr),
    .load_data(load_data),
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
    input [2:0] addr;
    input [31:0] value;
    begin
      @(negedge clk);
      load_data_addr = addr;
      load_data = value;
      load_data_en = 1;
      @(negedge clk);
      load_data_en = 0;
    end
  endtask

  task load_twiddle_word;
    input [1:0] addr;
    input [31:0] value;
    begin
      @(negedge clk);
      load_twiddle_addr = addr;
      load_twiddle = value;
      load_twiddle_en = 1;
      @(negedge clk);
      load_twiddle_en = 0;
    end
  endtask

  task check_read;
    input [2:0] addr;
    input [31:0] expected;
    begin
      read_addr = addr;
      #1;
      if (read_data !== expected) begin
        $display("FAIL: read addr %0d expected %0d got %0d", addr, expected, read_data);
        $finish;
      end
    end
  endtask

  initial begin
    clk = 0;
    rst_n = 0;
    start = 0;
    load_data_en = 0;
    load_data_addr = 0;
    load_data = 0;
    load_twiddle_en = 0;
    load_twiddle_addr = 0;
    load_twiddle = 0;
    read_addr = 0;

    repeat (2) @(negedge clk);
    rst_n = 1;

    load_data_word(0, 10);
    load_data_word(1, 2);
    load_data_word(2, 1000);
    load_data_word(3, 123);
    load_data_word(4, 7);
    load_data_word(5, 8);
    load_data_word(6, 8380410);
    load_data_word(7, 1);

    load_twiddle_word(0, 3);
    load_twiddle_word(1, 456);
    load_twiddle_word(2, 1);
    load_twiddle_word(3, 8380416);

    @(negedge clk);
    start = 1;
    @(negedge clk);
    start = 0;

    wait (done === 1);
    #1;

    check_read(0, 7692875);
    check_read(1, 687562);
    check_read(2, 544743);
    check_read(3, 7837674);
    check_read(4, 7463688);
    check_read(5, 916743);
    check_read(6, 114585);
    check_read(7, 8265818);

    @(negedge clk);
    if (done !== 0) begin
      $display("FAIL: done should clear after start is low");
      $finish;
    end

    $display("PASS: tb_ntt_core_8");
    $finish;
  end

endmodule
