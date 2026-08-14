// SPDX-FileCopyrightText: 2026 Srijan1972
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module zeta_store (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        clk,

    input  wire        zwe,
    input  wire [8:0]  zaddr,      
    input  wire [31:0] zdata,      

    input  wire        gs_sel,     
    input  wire [6:0]  row_l1,     
    input  wire [6:0]  row_l2,     
                                   
    output wire signed [31:0] e_l1, 
    output wire signed [31:0] o_l1, 
    output wire signed [31:0] e_l2, 
    output wire signed [31:0] o_l2  
);
    wire [7:0] raddr_l1 = {gs_sel, row_l1};
    wire [7:0] raddr_l2 = {gs_sel, row_l2};
    wire [7:0] pair_waddr = {zaddr[8], zaddr[7:1]};

    wire [31:0] rd_l1 [0:1];
    wire [31:0] rd_l2 [0:1];

    genvar gz;
    generate
        for (gz = 0; gz < 2; gz = gz + 1) begin : g_zrams
            wire we_i = zwe && (zaddr[0] == (gz != 0));
`ifdef USE_SRAM_MACRO
            asic_sram_1rw1r_sky130 u_ram (
`ifdef USE_POWER_PINS
                .vccd1(vccd1), .vssd1(vssd1),
`endif
                .clk(clk),
                .we0(we_i), .re0(!zwe), .waddr0(pair_waddr),
                .raddr0(raddr_l2), .wdata0(zdata), .rdata0(rd_l2[gz]),
                .re1(1'b1), .raddr1(raddr_l1), .rdata1(rd_l1[gz])
            );
`else
            bank_ram_1rw1r #(.DEPTH(256), .AW(8), .W(32)) u_ram (
                .clk(clk),
                .we0(we_i), .re0(!zwe),
                .addr0(we_i ? pair_waddr : raddr_l2),
                .wdata0(zdata), .rdata0(rd_l2[gz]),
                .re1(1'b1), .addr1(raddr_l1), .rdata1(rd_l1[gz])
            );
`endif
        end
    endgenerate

    assign e_l1 = $signed(rd_l1[0]);
    assign o_l1 = $signed(rd_l1[1]);
    assign e_l2 = $signed(rd_l2[0]);
    assign o_l2 = $signed(rd_l2[1]);

endmodule

`default_nettype wire
