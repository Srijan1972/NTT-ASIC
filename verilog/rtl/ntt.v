// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module ntt (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

    // Caravel exposes a single Wishbone transaction window to user logic.
    // We intentionally treat every valid cycle as a single register access and
    // then decode the low address bits in software to drive the NTT engine.
    wire valid = wbs_cyc_i && wbs_stb_i;
    reg wb_ack_r;

    // These registers are the user-side command plane for the NTT engine.
    // They let the management SoC program the operation while preserving a clean
    // path for Logic Analyzer override signals when LA ownership is enabled.
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

    wire        start_ctrl;
    wire [2:0]  op_ctrl;
    wire [1:0]  slot_a_ctrl;
    wire [1:0]  slot_b_ctrl;
    wire [1:0]  slot_c_ctrl;
    wire        mac_init_ctrl;

    wire        ext_we_ctrl;
    wire [1:0]  ext_wslot_ctrl;
    wire [7:0]  ext_waddr_ctrl;
    wire [31:0] ext_wdata_ctrl;

    wire        ext_re_ctrl;
    wire [1:0]  ext_rslot_ctrl;
    wire [7:0]  ext_raddr_ctrl;

    wire        zload_we_ctrl;
    wire [8:0]  zload_addr_ctrl;
    wire [31:0] zload_data_ctrl;

    wire [31:0] status_word;
    wire [31:0] wb_data_out;

    reg  [31:0] wb_data_out_r;
    wire [31:0] ext_rdata;
    wire        ext_rvalid;
    wire        busy;
    wire        done;

    // Software-visible register map for the management SoC.
    // These addresses are stable and intentionally narrow to the low byte of the
    // Wishbone address so the wrapper remains simple and firmware-friendly.
    localparam [7:0] REG_CMD       = 8'h00;
    localparam [7:0] REG_EXT_WR    = 8'h04;
    localparam [7:0] REG_EXT_RD    = 8'h08;
    localparam [7:0] REG_ZLOAD_DAT = 8'h10;
    localparam [7:0] REG_ZLOAD_CTL = 8'h14;
    localparam [7:0] REG_STATUS    = 8'h18;

    assign wbs_dat_o = wb_data_out_r;
    assign wbs_ack_o = wb_ack_r;

    // LA override policy:
    // - la_oenb[n] == 0 => the logic analyzer drives bit n
    // - la_oenb[n] == 1 => the register value is used
    // This matches the Caravel convention used by the example project and lets us
    // preserve a clean Wishbone-driven configuration path while still exposing a
    // debug/bring-up interface for the NTT engine.
    assign start_ctrl      = la_oenb[0] ? start_reg     : la_data_in[0];
    assign op_ctrl[0]      = la_oenb[1] ? op_reg[0]     : la_data_in[1];
    assign op_ctrl[1]      = la_oenb[2] ? op_reg[1]     : la_data_in[2];
    assign op_ctrl[2]      = la_oenb[3] ? op_reg[2]     : la_data_in[3];
    assign slot_a_ctrl[0]  = la_oenb[4] ? slot_a_reg[0] : la_data_in[4];
    assign slot_a_ctrl[1]  = la_oenb[5] ? slot_a_reg[1] : la_data_in[5];
    assign slot_b_ctrl[0]  = la_oenb[6] ? slot_b_reg[0] : la_data_in[6];
    assign slot_b_ctrl[1]  = la_oenb[7] ? slot_b_reg[1] : la_data_in[7];
    assign slot_c_ctrl[0]  = la_oenb[8] ? slot_c_reg[0] : la_data_in[8];
    assign slot_c_ctrl[1]  = la_oenb[9] ? slot_c_reg[1] : la_data_in[9];
    assign mac_init_ctrl    = la_oenb[10] ? mac_init_reg : la_data_in[10];

    assign zload_we_ctrl    = la_oenb[11] ? zload_we_reg : la_data_in[11];
    assign zload_addr_ctrl[0] = la_oenb[12] ? zload_addr_reg[0] : la_data_in[12];
    assign zload_addr_ctrl[1] = la_oenb[13] ? zload_addr_reg[1] : la_data_in[13];
    assign zload_addr_ctrl[2] = la_oenb[14] ? zload_addr_reg[2] : la_data_in[14];
    assign zload_addr_ctrl[3] = la_oenb[15] ? zload_addr_reg[3] : la_data_in[15];
    assign zload_addr_ctrl[4] = la_oenb[16] ? zload_addr_reg[4] : la_data_in[16];
    assign zload_addr_ctrl[5] = la_oenb[17] ? zload_addr_reg[5] : la_data_in[17];
    assign zload_addr_ctrl[6] = la_oenb[18] ? zload_addr_reg[6] : la_data_in[18];
    assign zload_addr_ctrl[7] = la_oenb[19] ? zload_addr_reg[7] : la_data_in[19];
    assign zload_addr_ctrl[8] = la_oenb[20] ? zload_addr_reg[8] : la_data_in[20];

    assign zload_data_ctrl[0]  = la_oenb[21] ? zload_data_reg[0]  : la_data_in[21];
    assign zload_data_ctrl[1]  = la_oenb[22] ? zload_data_reg[1]  : la_data_in[22];
    assign zload_data_ctrl[2]  = la_oenb[23] ? zload_data_reg[2]  : la_data_in[23];
    assign zload_data_ctrl[3]  = la_oenb[24] ? zload_data_reg[3]  : la_data_in[24];
    assign zload_data_ctrl[4]  = la_oenb[25] ? zload_data_reg[4]  : la_data_in[25];
    assign zload_data_ctrl[5]  = la_oenb[26] ? zload_data_reg[5]  : la_data_in[26];
    assign zload_data_ctrl[6]  = la_oenb[27] ? zload_data_reg[6]  : la_data_in[27];
    assign zload_data_ctrl[7]  = la_oenb[28] ? zload_data_reg[7]  : la_data_in[28];
    assign zload_data_ctrl[8]  = la_oenb[29] ? zload_data_reg[8]  : la_data_in[29];
    assign zload_data_ctrl[9]  = la_oenb[30] ? zload_data_reg[9]  : la_data_in[30];
    assign zload_data_ctrl[10] = la_oenb[31] ? zload_data_reg[10] : la_data_in[31];
    assign zload_data_ctrl[11] = la_oenb[32] ? zload_data_reg[11] : la_data_in[32];
    assign zload_data_ctrl[12] = la_oenb[33] ? zload_data_reg[12] : la_data_in[33];
    assign zload_data_ctrl[13] = la_oenb[34] ? zload_data_reg[13] : la_data_in[34];
    assign zload_data_ctrl[14] = la_oenb[35] ? zload_data_reg[14] : la_data_in[35];
    assign zload_data_ctrl[15] = la_oenb[36] ? zload_data_reg[15] : la_data_in[36];
    assign zload_data_ctrl[16] = la_oenb[37] ? zload_data_reg[16] : la_data_in[37];
    assign zload_data_ctrl[17] = la_oenb[38] ? zload_data_reg[17] : la_data_in[38];
    assign zload_data_ctrl[18] = la_oenb[39] ? zload_data_reg[18] : la_data_in[39];
    assign zload_data_ctrl[19] = la_oenb[40] ? zload_data_reg[19] : la_data_in[40];
    assign zload_data_ctrl[20] = la_oenb[41] ? zload_data_reg[20] : la_data_in[41];
    assign zload_data_ctrl[21] = la_oenb[42] ? zload_data_reg[21] : la_data_in[42];
    assign zload_data_ctrl[22] = la_oenb[43] ? zload_data_reg[22] : la_data_in[43];
    assign zload_data_ctrl[23] = la_oenb[44] ? zload_data_reg[23] : la_data_in[44];
    assign zload_data_ctrl[24] = la_oenb[45] ? zload_data_reg[24] : la_data_in[45];
    assign zload_data_ctrl[25] = la_oenb[46] ? zload_data_reg[25] : la_data_in[46];
    assign zload_data_ctrl[26] = la_oenb[47] ? zload_data_reg[26] : la_data_in[47];
    assign zload_data_ctrl[27] = la_oenb[48] ? zload_data_reg[27] : la_data_in[48];
    assign zload_data_ctrl[28] = la_oenb[49] ? zload_data_reg[28] : la_data_in[49];
    assign zload_data_ctrl[29] = la_oenb[50] ? zload_data_reg[29] : la_data_in[50];
    assign zload_data_ctrl[30] = la_oenb[51] ? zload_data_reg[30] : la_data_in[51];
    assign zload_data_ctrl[31] = la_oenb[52] ? zload_data_reg[31] : la_data_in[52];

    assign ext_we_ctrl     = la_oenb[53] ? ext_we_reg     : la_data_in[53];
    assign ext_wslot_ctrl[0] = la_oenb[54] ? ext_wslot_reg[0] : la_data_in[54];
    assign ext_wslot_ctrl[1] = la_oenb[55] ? ext_wslot_reg[1] : la_data_in[55];
    assign ext_waddr_ctrl[0] = la_oenb[56] ? ext_waddr_reg[0] : la_data_in[56];
    assign ext_waddr_ctrl[1] = la_oenb[57] ? ext_waddr_reg[1] : la_data_in[57];
    assign ext_waddr_ctrl[2] = la_oenb[58] ? ext_waddr_reg[2] : la_data_in[58];
    assign ext_waddr_ctrl[3] = la_oenb[59] ? ext_waddr_reg[3] : la_data_in[59];
    assign ext_waddr_ctrl[4] = la_oenb[60] ? ext_waddr_reg[4] : la_data_in[60];
    assign ext_waddr_ctrl[5] = la_oenb[61] ? ext_waddr_reg[5] : la_data_in[61];
    assign ext_waddr_ctrl[6] = la_oenb[62] ? ext_waddr_reg[6] : la_data_in[62];
    assign ext_waddr_ctrl[7] = la_oenb[63] ? ext_waddr_reg[7] : la_data_in[63];
    assign ext_wdata_ctrl[0] = la_oenb[64] ? ext_wdata_reg[0] : la_data_in[64];
    assign ext_wdata_ctrl[1] = la_oenb[65] ? ext_wdata_reg[1] : la_data_in[65];
    assign ext_wdata_ctrl[2] = la_oenb[66] ? ext_wdata_reg[2] : la_data_in[66];
    assign ext_wdata_ctrl[3] = la_oenb[67] ? ext_wdata_reg[3] : la_data_in[67];
    assign ext_wdata_ctrl[4] = la_oenb[68] ? ext_wdata_reg[4] : la_data_in[68];
    assign ext_wdata_ctrl[5] = la_oenb[69] ? ext_wdata_reg[5] : la_data_in[69];
    assign ext_wdata_ctrl[6] = la_oenb[70] ? ext_wdata_reg[6] : la_data_in[70];
    assign ext_wdata_ctrl[7] = la_oenb[71] ? ext_wdata_reg[7] : la_data_in[71];
    assign ext_wdata_ctrl[8] = la_oenb[72] ? ext_wdata_reg[8] : la_data_in[72];
    assign ext_wdata_ctrl[9] = la_oenb[73] ? ext_wdata_reg[9] : la_data_in[73];
    assign ext_wdata_ctrl[10] = la_oenb[74] ? ext_wdata_reg[10] : la_data_in[74];
    assign ext_wdata_ctrl[11] = la_oenb[75] ? ext_wdata_reg[11] : la_data_in[75];
    assign ext_wdata_ctrl[12] = la_oenb[76] ? ext_wdata_reg[12] : la_data_in[76];
    assign ext_wdata_ctrl[13] = la_oenb[77] ? ext_wdata_reg[13] : la_data_in[77];
    assign ext_wdata_ctrl[14] = la_oenb[78] ? ext_wdata_reg[14] : la_data_in[78];
    assign ext_wdata_ctrl[15] = la_oenb[79] ? ext_wdata_reg[15] : la_data_in[79];
    assign ext_wdata_ctrl[16] = la_oenb[80] ? ext_wdata_reg[16] : la_data_in[80];
    assign ext_wdata_ctrl[17] = la_oenb[81] ? ext_wdata_reg[17] : la_data_in[81];
    assign ext_wdata_ctrl[18] = la_oenb[82] ? ext_wdata_reg[18] : la_data_in[82];
    assign ext_wdata_ctrl[19] = la_oenb[83] ? ext_wdata_reg[19] : la_data_in[83];
    assign ext_wdata_ctrl[20] = la_oenb[84] ? ext_wdata_reg[20] : la_data_in[84];
    assign ext_wdata_ctrl[21] = la_oenb[85] ? ext_wdata_reg[21] : la_data_in[85];
    assign ext_wdata_ctrl[22] = la_oenb[86] ? ext_wdata_reg[22] : la_data_in[86];
    assign ext_wdata_ctrl[23] = la_oenb[87] ? ext_wdata_reg[23] : la_data_in[87];
    assign ext_wdata_ctrl[24] = la_oenb[88] ? ext_wdata_reg[24] : la_data_in[88];
    assign ext_wdata_ctrl[25] = la_oenb[89] ? ext_wdata_reg[25] : la_data_in[89];
    assign ext_wdata_ctrl[26] = la_oenb[90] ? ext_wdata_reg[26] : la_data_in[90];
    assign ext_wdata_ctrl[27] = la_oenb[91] ? ext_wdata_reg[27] : la_data_in[91];
    assign ext_wdata_ctrl[28] = la_oenb[92] ? ext_wdata_reg[28] : la_data_in[92];
    assign ext_wdata_ctrl[29] = la_oenb[93] ? ext_wdata_reg[29] : la_data_in[93];
    assign ext_wdata_ctrl[30] = la_oenb[94] ? ext_wdata_reg[30] : la_data_in[94];
    assign ext_wdata_ctrl[31] = la_oenb[95] ? ext_wdata_reg[31] : la_data_in[95];

    assign ext_re_ctrl     = la_oenb[96] ? ext_re_reg     : la_data_in[96];
    assign ext_rslot_ctrl[0] = la_oenb[97] ? ext_rslot_reg[0] : la_data_in[97];
    assign ext_rslot_ctrl[1] = la_oenb[98] ? ext_rslot_reg[1] : la_data_in[98];
    assign ext_raddr_ctrl[0] = la_oenb[99] ? ext_raddr_reg[0] : la_data_in[99];
    assign ext_raddr_ctrl[1] = la_oenb[100] ? ext_raddr_reg[1] : la_data_in[100];
    assign ext_raddr_ctrl[2] = la_oenb[101] ? ext_raddr_reg[2] : la_data_in[101];
    assign ext_raddr_ctrl[3] = la_oenb[102] ? ext_raddr_reg[3] : la_data_in[102];
    assign ext_raddr_ctrl[4] = la_oenb[103] ? ext_raddr_reg[4] : la_data_in[103];
    assign ext_raddr_ctrl[5] = la_oenb[104] ? ext_raddr_reg[5] : la_data_in[104];
    assign ext_raddr_ctrl[6] = la_oenb[105] ? ext_raddr_reg[6] : la_data_in[105];
    assign ext_raddr_ctrl[7] = la_oenb[106] ? ext_raddr_reg[7] : la_data_in[106];

    assign status_word = {29'b0, ext_rvalid, done, busy};

    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            wb_ack_r       <= 1'b0;
            start_reg      <= 1'b0;
            op_reg         <= 3'b0;
            slot_a_reg     <= 2'b0;
            slot_b_reg     <= 2'b0;
            slot_c_reg     <= 2'b0;
            mac_init_reg   <= 1'b0;

            ext_we_reg     <= 1'b0;
            ext_wslot_reg  <= 2'b0;
            ext_waddr_reg  <= 8'b0;
            ext_wdata_reg  <= 32'b0;

            ext_re_reg     <= 1'b0;
            ext_rslot_reg  <= 2'b0;
            ext_raddr_reg  <= 8'b0;

            zload_we_reg   <= 1'b0;
            zload_addr_reg <= 9'b0;
            zload_data_reg <= 32'b0;
        end else begin
            wb_ack_r <= valid;

            if (valid && wbs_we_i) begin
                case (wbs_adr_i[7:0])
                    REG_CMD: begin
                        start_reg    <= wbs_dat_i[0];
                        op_reg       <= wbs_dat_i[3:1];
                        slot_a_reg   <= wbs_dat_i[5:4];
                        slot_b_reg   <= wbs_dat_i[7:6];
                        slot_c_reg   <= wbs_dat_i[9:8];
                        mac_init_reg <= wbs_dat_i[10];
                    end
                    REG_EXT_WR: begin
                        ext_we_reg    <= wbs_dat_i[0];
                        ext_wslot_reg <= wbs_dat_i[2:1];
                        ext_waddr_reg <= wbs_dat_i[10:3];
                        ext_wdata_reg <= wbs_dat_i;
                    end
                    REG_EXT_RD: begin
                        ext_re_reg    <= wbs_dat_i[0];
                        ext_rslot_reg <= wbs_dat_i[2:1];
                        ext_raddr_reg <= wbs_dat_i[10:3];
                    end
                    REG_ZLOAD_DAT: begin
                        zload_data_reg <= wbs_dat_i;
                    end
                    REG_ZLOAD_CTL: begin
                        zload_we_reg   <= wbs_dat_i[0];
                        zload_addr_reg <= wbs_dat_i[9:1];
                    end
                    default: ;
                endcase
            end
        end
    end

    always @(*) begin
        case (wbs_adr_i[7:0])
            REG_CMD:    wb_data_out_r = {21'b0, mac_init_reg, slot_c_reg, slot_b_reg, slot_a_reg, op_reg, start_reg};
            REG_EXT_WR: wb_data_out_r = {21'b0, ext_waddr_reg, ext_wslot_reg, ext_we_reg};
            REG_EXT_RD: wb_data_out_r = {21'b0, ext_raddr_reg, ext_rslot_reg, ext_re_reg};
            REG_ZLOAD_DAT: wb_data_out_r = zload_data_reg;
            REG_ZLOAD_CTL: wb_data_out_r = {22'b0, zload_addr_reg, zload_we_reg};
            REG_STATUS: wb_data_out_r = status_word;
            default:    wb_data_out_r = 32'b0;
        endcase
    end

    assign la_data_out = {{(128-35){1'b0}}, ext_rdata, ext_rvalid, done, busy};

    // This is the key translation layer: Caravel presents a Wishbone slave and a
    // LA bus, but the NTT engine is a plain synchronous control/data engine. The
    // wrapper converts the harness interfaces into the engine's native start/op/
    // ext/zload signals and mirrors status back for software and debug use.
    //
    // Software-visible register table (firmware ABI):
    //   REG_CMD       = 8'h00
    //      [0]     start
    //      [3:1]   op
    //      [5:4]   slot_a
    //      [7:6]   slot_b
    //      [9:8]   slot_c
    //      [10]    mac_init
    //
    //   REG_EXT_WR    = 8'h04
    //      [0]     ext_we
    //      [2:1]   ext_wslot
    //      [10:3]  ext_waddr
    //      [31:0]  ext_wdata
    //
    //   REG_EXT_RD    = 8'h08
    //      [0]     ext_re
    //      [2:1]   ext_rslot
    //      [10:3]  ext_raddr
    //      readback: ext_rdata
    //
    //   REG_ZLOAD_DAT = 8'h10
    //      [31:0]  zload_data
    //
    //   REG_ZLOAD_CTL = 8'h14
    //      [0]     zload_we
    //      [9:1]   zload_addr
    //
    //   REG_STATUS    = 8'h18
    //      [0]     busy
    //      [1]     done
    //      [2]     ext_rvalid
    //
    // The wrapper keeps the low byte of the Wishbone address as the stable ABI so
    // software can remain portable even if the surrounding harness changes.
    ntt_engine_256 ntt (
`ifdef USE_POWER_PINS
        .vccd1(vccd1),
        .vssd1(vssd1),
`endif
        .clk(wb_clk_i),
        .rst_n(~wb_rst_i),
        .start(start_ctrl),
        .op(op_ctrl),
        .slot_a(slot_a_ctrl),
        .slot_b(slot_b_ctrl),
        .slot_c(slot_c_ctrl),
        .mac_init(mac_init_ctrl),
        .busy(busy),
        .done(done),
        .ext_we(ext_we_ctrl),
        .ext_wslot(ext_wslot_ctrl),
        .ext_waddr(ext_waddr_ctrl),
        .ext_wdata(ext_wdata_ctrl),
        .ext_re(ext_re_ctrl),
        .ext_rslot(ext_rslot_ctrl),
        .ext_raddr(ext_raddr_ctrl),
        .ext_rdata(ext_rdata),
        .ext_rvalid(ext_rvalid),
        .zload_we(zload_we_ctrl),
        .zload_addr(zload_addr_ctrl),
        .zload_data(zload_data_ctrl)
    );

endmodule	// user_project_wrapper

`default_nettype wire
