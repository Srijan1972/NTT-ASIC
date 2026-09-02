// SPDX-FileCopyrightText: 2026 Srijan1972
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

// Wishbone register bridge for ntt_engine_256.  This block is hardened as a
// separate macro so the fixed Caravel wrapper contains no standard cells.
module ntt_wb_bridge (
`ifdef USE_POWER_PINS
    inout  wire        VPWR,
    inout  wire        VGND,
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

    reg  wb_ack_r;
    wire wb_valid = wbs_cyc_i && wbs_stb_i;
    wire wb_fire  = wb_valid && !wb_ack_r;

    reg         start_reg;
    reg  [2:0]  op_reg;
    reg  [1:0]  slot_a_reg;
    reg  [1:0]  slot_b_reg;
    reg  [1:0]  slot_c_reg;
    reg         mac_init_reg;

    reg         ext_we_reg;
    reg  [1:0]  ext_wslot_reg;
    reg  [7:0]  ext_waddr_reg;
    reg  [31:0] ext_wdata_reg;

    reg         ext_re_reg;
    reg  [1:0]  ext_rslot_reg;
    reg  [7:0]  ext_raddr_reg;

    reg         zload_we_reg;
    reg  [8:0]  zload_addr_reg;
    reg  [31:0] zload_data_reg;

    reg         ext_rvalid_seen;
    wire [31:0] status_word = {29'b0, ext_rvalid_seen, done_i, busy_i};
    reg  [31:0] wb_data_out_r;

    localparam [7:0] REG_CMD         = 8'h00;
    localparam [7:0] REG_EXT_WR_CTL  = 8'h04;
    localparam [7:0] REG_EXT_RD_CTL  = 8'h08;
    localparam [7:0] REG_EXT_WR_DAT  = 8'h0c;
    localparam [7:0] REG_ZLOAD_DAT   = 8'h10;
    localparam [7:0] REG_ZLOAD_CTL   = 8'h14;
    localparam [7:0] REG_STATUS      = 8'h18;
    localparam [7:0] REG_EXT_RD_DAT  = 8'h1c;

    assign wbs_ack_o     = wb_ack_r;
    assign wbs_dat_o     = wb_data_out_r;
    assign la_data_out_o = {125'b0, mem_rvalid_i, done_i, busy_i};
    assign io_out_o      = 38'b0;
    assign io_oeb_o      = {38{1'b1}};
    assign user_irq_o    = {1'b0, mem_rvalid_i, done_i};
    assign start_o       = start_reg;
    assign engine_rst_n_o = ~wb_rst_i;
    assign op_o          = op_reg;
    assign slot_a_o      = slot_a_reg;
    assign slot_b_o      = slot_b_reg;
    assign slot_c_o      = slot_c_reg;
    assign mac_init_o    = mac_init_reg;
    assign mem_we_o      = ext_we_reg | zload_we_reg;
    assign mem_re_o      = ext_re_reg;
    assign mem_target_o  = zload_we_reg;
    assign mem_slot_o    = ext_re_reg ? ext_rslot_reg : ext_wslot_reg;
    assign mem_addr_o    = zload_we_reg ? zload_addr_reg :
                           ext_re_reg ? {1'b0, ext_raddr_reg} :
                                        {1'b0, ext_waddr_reg};
    assign mem_wdata_o   = zload_we_reg ? zload_data_reg : ext_wdata_reg;

    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            wb_ack_r        <= 1'b0;
            start_reg       <= 1'b0;
            op_reg          <= 3'b0;
            slot_a_reg      <= 2'b0;
            slot_b_reg      <= 2'b0;
            slot_c_reg      <= 2'b0;
            mac_init_reg    <= 1'b0;
            ext_we_reg      <= 1'b0;
            ext_wslot_reg   <= 2'b0;
            ext_waddr_reg   <= 8'b0;
            ext_wdata_reg   <= 32'b0;
            ext_re_reg      <= 1'b0;
            ext_rslot_reg   <= 2'b0;
            ext_raddr_reg   <= 8'b0;
            zload_we_reg    <= 1'b0;
            zload_addr_reg  <= 9'b0;
            zload_data_reg  <= 32'b0;
            ext_rvalid_seen <= 1'b0;
        end else begin
            wb_ack_r     <= wb_fire;
            start_reg    <= 1'b0;
            ext_we_reg   <= 1'b0;
            ext_re_reg   <= 1'b0;
            zload_we_reg <= 1'b0;

            if (mem_rvalid_i)
                ext_rvalid_seen <= 1'b1;
            if (wb_fire && !wbs_we_i && wbs_adr_i[7:0] == REG_EXT_RD_DAT)
                ext_rvalid_seen <= 1'b0;

            if (wb_fire && wbs_we_i) begin
                case (wbs_adr_i[7:0])
                    REG_CMD: begin
                        if (wbs_sel_i[0]) begin
                            start_reg  <= wbs_dat_i[0];
                            op_reg     <= wbs_dat_i[3:1];
                            slot_a_reg <= wbs_dat_i[5:4];
                            slot_b_reg <= wbs_dat_i[7:6];
                        end
                        if (wbs_sel_i[1]) begin
                            slot_c_reg   <= wbs_dat_i[9:8];
                            mac_init_reg <= wbs_dat_i[10];
                        end
                    end
                    REG_EXT_WR_CTL: begin
                        if (wbs_sel_i[0]) begin
                            ext_we_reg         <= wbs_dat_i[0];
                            ext_wslot_reg      <= wbs_dat_i[2:1];
                            ext_waddr_reg[4:0] <= wbs_dat_i[7:3];
                        end
                        if (wbs_sel_i[1])
                            ext_waddr_reg[7:5] <= wbs_dat_i[10:8];
                    end
                    REG_EXT_RD_CTL: begin
                        if (wbs_sel_i[0]) begin
                            ext_re_reg         <= wbs_dat_i[0];
                            if (wbs_dat_i[0])
                                ext_rvalid_seen <= 1'b0;
                            ext_rslot_reg      <= wbs_dat_i[2:1];
                            ext_raddr_reg[4:0] <= wbs_dat_i[7:3];
                        end
                        if (wbs_sel_i[1])
                            ext_raddr_reg[7:5] <= wbs_dat_i[10:8];
                    end
                    REG_EXT_WR_DAT: begin
                        if (wbs_sel_i[0]) ext_wdata_reg[7:0]   <= wbs_dat_i[7:0];
                        if (wbs_sel_i[1]) ext_wdata_reg[15:8]  <= wbs_dat_i[15:8];
                        if (wbs_sel_i[2]) ext_wdata_reg[23:16] <= wbs_dat_i[23:16];
                        if (wbs_sel_i[3]) ext_wdata_reg[31:24] <= wbs_dat_i[31:24];
                    end
                    REG_ZLOAD_DAT: begin
                        if (wbs_sel_i[0]) zload_data_reg[7:0]   <= wbs_dat_i[7:0];
                        if (wbs_sel_i[1]) zload_data_reg[15:8]  <= wbs_dat_i[15:8];
                        if (wbs_sel_i[2]) zload_data_reg[23:16] <= wbs_dat_i[23:16];
                        if (wbs_sel_i[3]) zload_data_reg[31:24] <= wbs_dat_i[31:24];
                    end
                    REG_ZLOAD_CTL: begin
                        if (wbs_sel_i[0]) begin
                            zload_we_reg        <= wbs_dat_i[0];
                            zload_addr_reg[6:0] <= wbs_dat_i[7:1];
                        end
                        if (wbs_sel_i[1])
                            zload_addr_reg[8:7] <= wbs_dat_i[9:8];
                    end
                    default: ;
                endcase
            end
        end
    end

    always @(*) begin
        case (wbs_adr_i[7:0])
            REG_CMD:
                wb_data_out_r = {21'b0, mac_init_reg, slot_c_reg,
                                 slot_b_reg, slot_a_reg, op_reg, 1'b0};
            REG_EXT_WR_CTL:
                wb_data_out_r = {21'b0, ext_waddr_reg, ext_wslot_reg, 1'b0};
            REG_EXT_RD_CTL:
                wb_data_out_r = {21'b0, ext_raddr_reg, ext_rslot_reg, 1'b0};
            REG_EXT_WR_DAT: wb_data_out_r = ext_wdata_reg;
            REG_ZLOAD_DAT:  wb_data_out_r = zload_data_reg;
            REG_ZLOAD_CTL:  wb_data_out_r = {22'b0, zload_addr_reg, 1'b0};
            REG_STATUS:     wb_data_out_r = status_word;
            REG_EXT_RD_DAT: wb_data_out_r = mem_rdata_i;
            default:        wb_data_out_r = 32'b0;
        endcase
    end

endmodule

`default_nettype wire
