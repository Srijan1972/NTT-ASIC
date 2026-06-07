module simple_dual_port_ram #(
  parameter DATA_WIDTH = 32,
  parameter ADDR_WIDTH = 4
) (
  input clk,
  input we,
  input [ADDR_WIDTH-1:0] waddr,
  input [DATA_WIDTH-1:0] wdata,
  input [ADDR_WIDTH-1:0] raddr,
  output reg [DATA_WIDTH-1:0] rdata
);

  localparam DEPTH = (1 << ADDR_WIDTH);

  reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

  always @(posedge clk) begin
    if (we) begin
      mem[waddr] <= wdata;
    end

    rdata <= mem[raddr];
  end

endmodule
