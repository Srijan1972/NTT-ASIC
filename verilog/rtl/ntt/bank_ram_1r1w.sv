
`default_nettype none

module bank_ram_1r1w #(
    parameter int DEPTH = 64,
    parameter int AW    = 6,
    parameter int W     = 32
) (
    input  wire          clk,
    input  wire          re,
    input  wire [AW-1:0] raddr,
    output reg  [W-1:0]  rdata,
    input  wire          we,
    input  wire [AW-1:0] waddr,
    input  wire [W-1:0]  wdata
);
    reg [W-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (re) rdata <= mem[raddr];
        if (we) mem[waddr] <= wdata;
    end
endmodule

`default_nettype wire
