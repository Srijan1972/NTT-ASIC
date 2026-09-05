// Physical blackbox used only while integrating the hardened NTT engine macro.
`default_nettype none

(* blackbox *)
module ntt_engine_256 (
    inout  wire        VGND,
    inout  wire        VPWR,
    output wire        busy,
    input  wire        clk,
    output wire        done,
    input  wire        mac_init,
    input  wire        mem_re,
    output wire        mem_rvalid,
    input  wire        mem_target,
    input  wire        mem_we,
    input  wire        rst_n,
    input  wire        start,
    input  wire [8:0]  mem_addr,
    output wire [31:0] mem_rdata,
    input  wire [1:0]  mem_slot,
    input  wire [31:0] mem_wdata,
    input  wire [2:0]  op,
    input  wire [1:0]  slot_a,
    input  wire [1:0]  slot_b,
    input  wire [1:0]  slot_c
);
endmodule

`default_nettype wire
