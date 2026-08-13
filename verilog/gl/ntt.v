// Placeholder physical blackbox used while hardening user_project_wrapper.
// `make ntt` replaces this file with the routed NTT gate-level netlist.
`default_nettype none
module ntt (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        wb_clk_i,
    input  wire        wb_rst_i,
    input  wire        wbs_stb_i,
    input  wire        wbs_cyc_i,
    input  wire        wbs_we_i,
    input  wire [3:0]  wbs_sel_i,
    input  wire [31:0] wbs_dat_i,
    input  wire [31:0] wbs_adr_i,
    output wire        wbs_ack_o,
    output wire [31:0] wbs_dat_o,
    output wire        busy_o,
    output wire        done_o,
    output wire        ext_rvalid_o
);
endmodule
`default_nettype wire
