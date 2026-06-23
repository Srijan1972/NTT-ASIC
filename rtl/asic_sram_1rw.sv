`timescale 1ns/1ps

module asic_sram_1rw #(
  parameter DATA_WIDTH = 32,
  parameter ADDR_WIDTH = 8,
  parameter DEPTH = 256
) (
  input clk,
  input cs,
  input we,
  input [ADDR_WIDTH-1:0] addr,
  input [DATA_WIDTH-1:0] wdata,
  output reg [DATA_WIDTH-1:0] rdata
);

  reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

  always @(posedge clk) begin
    if (cs) begin
      if (we) begin
        mem[addr] <= wdata;
      end else begin
        rdata <= mem[addr];
      end
    end
  end

endmodule
