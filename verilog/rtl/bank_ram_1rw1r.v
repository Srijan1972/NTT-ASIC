
`default_nettype none

module bank_ram_1rw1r #(
    parameter int DEPTH = 256,
    parameter int AW    = 8,
    parameter int W     = 32
) (
    input  wire          clk,
    input  wire          we0,
    input  wire          re0,
    input  wire [AW-1:0] addr0,
    input  wire [W-1:0]  wdata0,
    output reg  [W-1:0]  rdata0,
    input  wire          re1,
    input  wire [AW-1:0] addr1,
    output reg  [W-1:0]  rdata1
);
    reg [W-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (we0)          mem[addr0] <= wdata0;
        else if (re0)     rdata0 <= mem[addr0];
        if (re1)          rdata1 <= mem[addr1];
    end
endmodule

`default_nettype wire
