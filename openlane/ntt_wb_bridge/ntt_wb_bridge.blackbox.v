// Physical blackbox used only while integrating the hardened bridge macro.
`default_nettype none

(* blackbox *)
module ntt_wb_bridge (
    inout  wire        VPWR,
    inout  wire        VGND,
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
    output wire [127:0] la_data_out_o,
    output wire [37:0]  io_out_o,
    output wire [37:0]  io_oeb_o,
    output wire [2:0]   user_irq_o,
    output wire        start_o,
    output wire        engine_rst_n_o,
    output wire [2:0]  op_o,
    output wire [1:0]  slot_a_o,
    output wire [1:0]  slot_b_o,
    output wire [1:0]  slot_c_o,
    output wire        mac_init_o,
    output wire        mem_we_o,
    output wire        mem_re_o,
    output wire        mem_target_o,
    output wire [1:0]  mem_slot_o,
    output wire [8:0]  mem_addr_o,
    output wire [31:0] mem_wdata_o,
    input  wire [31:0] mem_rdata_i,
    input  wire        mem_rvalid_i,
    input  wire        busy_i,
    input  wire        done_i
);
endmodule

`default_nettype wire
