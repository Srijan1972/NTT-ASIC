// Physical macro blackbox for the routed Dilithium NTT engine.
// The matching LEF/GDS/Liberty views are ntt_engine_256.{lef,gds.gz,lib}.
`default_nettype none

(* blackbox *)
module ntt_engine_256 (
    inout  VPWR,
    inout  VGND,
    input  clk,
    input  rst_n,
    input  start,
    input  [2:0] op,
    input  [1:0] slot_a,
    input  [1:0] slot_b,
    input  [1:0] slot_c,
    input  mac_init,
    output busy,
    output done,
    input  mem_we,
    input  mem_re,
    input  mem_target,
    input  [1:0] mem_slot,
    input  [8:0] mem_addr,
    input  [31:0] mem_wdata,
    output [31:0] mem_rdata,
    output mem_rvalid
);
endmodule

`default_nettype wire
