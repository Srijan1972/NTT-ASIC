// SPDX-FileCopyrightText: 2020 Efabless Corporation
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

// Physical integration shell around two independently hardened macros.  The
// wrapper flow flattens this shell, leaving only u_bridge and u_engine as hard
// macros inside user_project_wrapper.
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
    output wire [127:0] la_data_out_o,
    output wire [37:0]  io_out_o,
    output wire [37:0]  io_oeb_o,
    output wire [2:0]   user_irq_o,
    output wire        busy_o,
    output wire        done_o,
    output wire        ext_rvalid_o
);

    wire        start;
    wire        engine_rst_n;
    wire [2:0]  op;
    wire [1:0]  slot_a;
    wire [1:0]  slot_b;
    wire [1:0]  slot_c;
    wire        mac_init;
    wire        mem_we;
    wire        mem_re;
    wire        mem_target;
    wire [1:0]  mem_slot;
    wire [8:0]  mem_addr;
    wire [31:0] mem_wdata;
    wire [31:0] mem_rdata;
    wire        mem_rvalid;
    wire        busy;
    wire        done;

    assign busy_o       = busy;
    assign done_o       = done;
    assign ext_rvalid_o = mem_rvalid;

    ntt_wb_bridge u_bridge (
`ifdef USE_POWER_PINS
        .VPWR(vccd1),
        .VGND(vssd1),
`endif
        .wb_clk_i(wb_clk_i),
        .wb_rst_i(wb_rst_i),
        .wbs_stb_i(wbs_stb_i),
        .wbs_cyc_i(wbs_cyc_i),
        .wbs_we_i(wbs_we_i),
        .wbs_sel_i(wbs_sel_i),
        .wbs_dat_i(wbs_dat_i),
        .wbs_adr_i(wbs_adr_i),
        .wbs_ack_o(wbs_ack_o),
        .wbs_dat_o(wbs_dat_o),
        .la_data_out_o(la_data_out_o),
        .io_out_o(io_out_o),
        .io_oeb_o(io_oeb_o),
        .user_irq_o(user_irq_o),
        .start_o(start),
        .engine_rst_n_o(engine_rst_n),
        .op_o(op),
        .slot_a_o(slot_a),
        .slot_b_o(slot_b),
        .slot_c_o(slot_c),
        .mac_init_o(mac_init),
        .mem_we_o(mem_we),
        .mem_re_o(mem_re),
        .mem_target_o(mem_target),
        .mem_slot_o(mem_slot),
        .mem_addr_o(mem_addr),
        .mem_wdata_o(mem_wdata),
        .mem_rdata_i(mem_rdata),
        .mem_rvalid_i(mem_rvalid),
        .busy_i(busy),
        .done_i(done)
    );

    ntt_engine_256 u_engine (
`ifdef USE_POWER_PINS
`ifdef HARDENED_ENGINE_MACRO
        .VPWR(vccd1),
        .VGND(vssd1),
`else
        .vccd1(vccd1),
        .vssd1(vssd1),
`endif
`endif
        .clk(wb_clk_i),
        .rst_n(engine_rst_n),
        .start(start),
        .op(op),
        .slot_a(slot_a),
        .slot_b(slot_b),
        .slot_c(slot_c),
        .mac_init(mac_init),
        .busy(busy),
        .done(done),
        .mem_we(mem_we),
        .mem_re(mem_re),
        .mem_target(mem_target),
        .mem_slot(mem_slot),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_rdata(mem_rdata),
        .mem_rvalid(mem_rvalid)
    );

endmodule

`default_nettype wire
