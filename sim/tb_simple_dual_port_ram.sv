`timescale 1ns/1ps

module tb_simple_dual_port_ram;

  localparam DATA_WIDTH = 32;
  localparam ADDR_WIDTH = 4;

  reg clk;
  reg we;
  reg [ADDR_WIDTH-1:0] waddr;
  reg [DATA_WIDTH-1:0] wdata;
  reg [ADDR_WIDTH-1:0] raddr;
  wire [DATA_WIDTH-1:0] rdata;

  simple_dual_port_ram #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) dut (
    .clk(clk),
    .we(we),
    .waddr(waddr),
    .wdata(wdata),
    .raddr(raddr),
    .rdata(rdata)
  );

  always #5 clk = ~clk;

  task write_word;
    input [ADDR_WIDTH-1:0] addr;
    input [DATA_WIDTH-1:0] data;
    begin
      @(negedge clk);
      we = 1'b1;
      waddr = addr;
      wdata = data;
      @(negedge clk);
      we = 1'b0;
    end
  endtask

  task read_check;
    input [ADDR_WIDTH-1:0] addr;
    input [DATA_WIDTH-1:0] expected;
    begin
      @(negedge clk);
      raddr = addr;
      @(posedge clk);
      #1;
      if (rdata !== expected) begin
        $display("FAIL: addr=%0d expected=%0d got=%0d", addr, expected, rdata);
        $finish;
      end
    end
  endtask

  initial begin
    clk = 1'b0;
    we = 1'b0;
    waddr = 0;
    wdata = 0;
    raddr = 0;

    write_word(4'd0, 32'd1234);
    write_word(4'd1, 32'd5678);
    write_word(4'd2, 32'd8380416);
    write_word(4'd15, 32'd42);

    read_check(4'd0, 32'd1234);
    read_check(4'd1, 32'd5678);
    read_check(4'd2, 32'd8380416);
    read_check(4'd15, 32'd42);

    write_word(4'd1, 32'd9999);
    read_check(4'd1, 32'd9999);

    $display("PASS: tb_simple_dual_port_ram");
    $finish;
  end

endmodule
