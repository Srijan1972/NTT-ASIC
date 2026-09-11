// This is the unpowered netlist.
module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \ntt.busy_e ;
 wire \ntt.done ;
 wire \ntt.e0_y[0] ;
 wire \ntt.e0_y[10] ;
 wire \ntt.e0_y[11] ;
 wire \ntt.e0_y[12] ;
 wire \ntt.e0_y[13] ;
 wire \ntt.e0_y[14] ;
 wire \ntt.e0_y[15] ;
 wire \ntt.e0_y[16] ;
 wire \ntt.e0_y[17] ;
 wire \ntt.e0_y[18] ;
 wire \ntt.e0_y[19] ;
 wire \ntt.e0_y[1] ;
 wire \ntt.e0_y[20] ;
 wire \ntt.e0_y[21] ;
 wire \ntt.e0_y[22] ;
 wire \ntt.e0_y[23] ;
 wire \ntt.e0_y[24] ;
 wire \ntt.e0_y[25] ;
 wire \ntt.e0_y[26] ;
 wire \ntt.e0_y[27] ;
 wire \ntt.e0_y[28] ;
 wire \ntt.e0_y[29] ;
 wire \ntt.e0_y[2] ;
 wire \ntt.e0_y[30] ;
 wire \ntt.e0_y[31] ;
 wire \ntt.e0_y[32] ;
 wire \ntt.e0_y[33] ;
 wire \ntt.e0_y[34] ;
 wire \ntt.e0_y[35] ;
 wire \ntt.e0_y[36] ;
 wire \ntt.e0_y[37] ;
 wire \ntt.e0_y[38] ;
 wire \ntt.e0_y[39] ;
 wire \ntt.e0_y[3] ;
 wire \ntt.e0_y[4] ;
 wire \ntt.e0_y[5] ;
 wire \ntt.e0_y[6] ;
 wire \ntt.e0_y[7] ;
 wire \ntt.e0_y[8] ;
 wire \ntt.e0_y[9] ;
 wire \ntt.e1_y[0] ;
 wire \ntt.e1_y[10] ;
 wire \ntt.e1_y[11] ;
 wire \ntt.e1_y[12] ;
 wire \ntt.e1_y[13] ;
 wire \ntt.e1_y[14] ;
 wire \ntt.e1_y[15] ;
 wire \ntt.e1_y[16] ;
 wire \ntt.e1_y[17] ;
 wire \ntt.e1_y[18] ;
 wire \ntt.e1_y[19] ;
 wire \ntt.e1_y[1] ;
 wire \ntt.e1_y[20] ;
 wire \ntt.e1_y[21] ;
 wire \ntt.e1_y[22] ;
 wire \ntt.e1_y[23] ;
 wire \ntt.e1_y[24] ;
 wire \ntt.e1_y[25] ;
 wire \ntt.e1_y[26] ;
 wire \ntt.e1_y[27] ;
 wire \ntt.e1_y[28] ;
 wire \ntt.e1_y[29] ;
 wire \ntt.e1_y[2] ;
 wire \ntt.e1_y[30] ;
 wire \ntt.e1_y[31] ;
 wire \ntt.e1_y[32] ;
 wire \ntt.e1_y[33] ;
 wire \ntt.e1_y[34] ;
 wire \ntt.e1_y[35] ;
 wire \ntt.e1_y[36] ;
 wire \ntt.e1_y[37] ;
 wire \ntt.e1_y[38] ;
 wire \ntt.e1_y[39] ;
 wire \ntt.e1_y[3] ;
 wire \ntt.e1_y[4] ;
 wire \ntt.e1_y[5] ;
 wire \ntt.e1_y[6] ;
 wire \ntt.e1_y[7] ;
 wire \ntt.e1_y[8] ;
 wire \ntt.e1_y[9] ;
 wire \ntt.e2_y[0] ;
 wire \ntt.e2_y[10] ;
 wire \ntt.e2_y[11] ;
 wire \ntt.e2_y[12] ;
 wire \ntt.e2_y[13] ;
 wire \ntt.e2_y[14] ;
 wire \ntt.e2_y[15] ;
 wire \ntt.e2_y[16] ;
 wire \ntt.e2_y[17] ;
 wire \ntt.e2_y[18] ;
 wire \ntt.e2_y[19] ;
 wire \ntt.e2_y[1] ;
 wire \ntt.e2_y[20] ;
 wire \ntt.e2_y[21] ;
 wire \ntt.e2_y[22] ;
 wire \ntt.e2_y[23] ;
 wire \ntt.e2_y[24] ;
 wire \ntt.e2_y[25] ;
 wire \ntt.e2_y[26] ;
 wire \ntt.e2_y[27] ;
 wire \ntt.e2_y[28] ;
 wire \ntt.e2_y[29] ;
 wire \ntt.e2_y[2] ;
 wire \ntt.e2_y[30] ;
 wire \ntt.e2_y[31] ;
 wire \ntt.e2_y[32] ;
 wire \ntt.e2_y[33] ;
 wire \ntt.e2_y[34] ;
 wire \ntt.e2_y[35] ;
 wire \ntt.e2_y[36] ;
 wire \ntt.e2_y[37] ;
 wire \ntt.e2_y[38] ;
 wire \ntt.e2_y[39] ;
 wire \ntt.e2_y[3] ;
 wire \ntt.e2_y[4] ;
 wire \ntt.e2_y[5] ;
 wire \ntt.e2_y[6] ;
 wire \ntt.e2_y[7] ;
 wire \ntt.e2_y[8] ;
 wire \ntt.e2_y[9] ;
 wire \ntt.e3_y[0] ;
 wire \ntt.e3_y[10] ;
 wire \ntt.e3_y[11] ;
 wire \ntt.e3_y[12] ;
 wire \ntt.e3_y[13] ;
 wire \ntt.e3_y[14] ;
 wire \ntt.e3_y[15] ;
 wire \ntt.e3_y[16] ;
 wire \ntt.e3_y[17] ;
 wire \ntt.e3_y[18] ;
 wire \ntt.e3_y[19] ;
 wire \ntt.e3_y[1] ;
 wire \ntt.e3_y[20] ;
 wire \ntt.e3_y[21] ;
 wire \ntt.e3_y[22] ;
 wire \ntt.e3_y[23] ;
 wire \ntt.e3_y[24] ;
 wire \ntt.e3_y[25] ;
 wire \ntt.e3_y[26] ;
 wire \ntt.e3_y[27] ;
 wire \ntt.e3_y[28] ;
 wire \ntt.e3_y[29] ;
 wire \ntt.e3_y[2] ;
 wire \ntt.e3_y[30] ;
 wire \ntt.e3_y[31] ;
 wire \ntt.e3_y[32] ;
 wire \ntt.e3_y[33] ;
 wire \ntt.e3_y[34] ;
 wire \ntt.e3_y[35] ;
 wire \ntt.e3_y[36] ;
 wire \ntt.e3_y[37] ;
 wire \ntt.e3_y[38] ;
 wire \ntt.e3_y[39] ;
 wire \ntt.e3_y[3] ;
 wire \ntt.e3_y[4] ;
 wire \ntt.e3_y[5] ;
 wire \ntt.e3_y[6] ;
 wire \ntt.e3_y[7] ;
 wire \ntt.e3_y[8] ;
 wire \ntt.e3_y[9] ;
 wire \ntt.e_mem_re ;
 wire \ntt.e_mem_we ;
 wire \ntt.engine_rst_n ;
 wire \ntt.ext_rvalid_o ;
 wire \ntt.mac_init ;
 wire \ntt.mem_addr[0] ;
 wire \ntt.mem_addr[1] ;
 wire \ntt.mem_addr[2] ;
 wire \ntt.mem_addr[3] ;
 wire \ntt.mem_addr[4] ;
 wire \ntt.mem_addr[5] ;
 wire \ntt.mem_addr[6] ;
 wire \ntt.mem_addr[7] ;
 wire \ntt.mem_addr[8] ;
 wire \ntt.mem_rdata_e[0] ;
 wire \ntt.mem_rdata_e[10] ;
 wire \ntt.mem_rdata_e[11] ;
 wire \ntt.mem_rdata_e[12] ;
 wire \ntt.mem_rdata_e[13] ;
 wire \ntt.mem_rdata_e[14] ;
 wire \ntt.mem_rdata_e[15] ;
 wire \ntt.mem_rdata_e[16] ;
 wire \ntt.mem_rdata_e[17] ;
 wire \ntt.mem_rdata_e[18] ;
 wire \ntt.mem_rdata_e[19] ;
 wire \ntt.mem_rdata_e[1] ;
 wire \ntt.mem_rdata_e[20] ;
 wire \ntt.mem_rdata_e[21] ;
 wire \ntt.mem_rdata_e[22] ;
 wire \ntt.mem_rdata_e[23] ;
 wire \ntt.mem_rdata_e[24] ;
 wire \ntt.mem_rdata_e[25] ;
 wire \ntt.mem_rdata_e[26] ;
 wire \ntt.mem_rdata_e[27] ;
 wire \ntt.mem_rdata_e[28] ;
 wire \ntt.mem_rdata_e[29] ;
 wire \ntt.mem_rdata_e[2] ;
 wire \ntt.mem_rdata_e[30] ;
 wire \ntt.mem_rdata_e[31] ;
 wire \ntt.mem_rdata_e[3] ;
 wire \ntt.mem_rdata_e[4] ;
 wire \ntt.mem_rdata_e[5] ;
 wire \ntt.mem_rdata_e[6] ;
 wire \ntt.mem_rdata_e[7] ;
 wire \ntt.mem_rdata_e[8] ;
 wire \ntt.mem_rdata_e[9] ;
 wire \ntt.mem_slot[0] ;
 wire \ntt.mem_slot[1] ;
 wire \ntt.mem_target ;
 wire \ntt.mem_wdata[0] ;
 wire \ntt.mem_wdata[10] ;
 wire \ntt.mem_wdata[11] ;
 wire \ntt.mem_wdata[12] ;
 wire \ntt.mem_wdata[13] ;
 wire \ntt.mem_wdata[14] ;
 wire \ntt.mem_wdata[15] ;
 wire \ntt.mem_wdata[16] ;
 wire \ntt.mem_wdata[17] ;
 wire \ntt.mem_wdata[18] ;
 wire \ntt.mem_wdata[19] ;
 wire \ntt.mem_wdata[1] ;
 wire \ntt.mem_wdata[20] ;
 wire \ntt.mem_wdata[21] ;
 wire \ntt.mem_wdata[22] ;
 wire \ntt.mem_wdata[23] ;
 wire \ntt.mem_wdata[24] ;
 wire \ntt.mem_wdata[25] ;
 wire \ntt.mem_wdata[26] ;
 wire \ntt.mem_wdata[27] ;
 wire \ntt.mem_wdata[28] ;
 wire \ntt.mem_wdata[29] ;
 wire \ntt.mem_wdata[2] ;
 wire \ntt.mem_wdata[30] ;
 wire \ntt.mem_wdata[31] ;
 wire \ntt.mem_wdata[3] ;
 wire \ntt.mem_wdata[4] ;
 wire \ntt.mem_wdata[5] ;
 wire \ntt.mem_wdata[6] ;
 wire \ntt.mem_wdata[7] ;
 wire \ntt.mem_wdata[8] ;
 wire \ntt.mem_wdata[9] ;
 wire \ntt.op[0] ;
 wire \ntt.op[1] ;
 wire \ntt.op[2] ;
 wire \ntt.slot_a[0] ;
 wire \ntt.slot_a[1] ;
 wire \ntt.slot_b[0] ;
 wire \ntt.slot_b[1] ;
 wire \ntt.slot_c[0] ;
 wire \ntt.slot_c[1] ;
 wire \ntt.start ;
 wire \ntt.w0_y[0] ;
 wire \ntt.w0_y[10] ;
 wire \ntt.w0_y[11] ;
 wire \ntt.w0_y[12] ;
 wire \ntt.w0_y[13] ;
 wire \ntt.w0_y[14] ;
 wire \ntt.w0_y[15] ;
 wire \ntt.w0_y[16] ;
 wire \ntt.w0_y[17] ;
 wire \ntt.w0_y[18] ;
 wire \ntt.w0_y[19] ;
 wire \ntt.w0_y[1] ;
 wire \ntt.w0_y[20] ;
 wire \ntt.w0_y[21] ;
 wire \ntt.w0_y[22] ;
 wire \ntt.w0_y[23] ;
 wire \ntt.w0_y[24] ;
 wire \ntt.w0_y[25] ;
 wire \ntt.w0_y[26] ;
 wire \ntt.w0_y[27] ;
 wire \ntt.w0_y[28] ;
 wire \ntt.w0_y[29] ;
 wire \ntt.w0_y[2] ;
 wire \ntt.w0_y[30] ;
 wire \ntt.w0_y[31] ;
 wire \ntt.w0_y[32] ;
 wire \ntt.w0_y[33] ;
 wire \ntt.w0_y[34] ;
 wire \ntt.w0_y[35] ;
 wire \ntt.w0_y[36] ;
 wire \ntt.w0_y[37] ;
 wire \ntt.w0_y[38] ;
 wire \ntt.w0_y[39] ;
 wire \ntt.w0_y[3] ;
 wire \ntt.w0_y[4] ;
 wire \ntt.w0_y[5] ;
 wire \ntt.w0_y[6] ;
 wire \ntt.w0_y[7] ;
 wire \ntt.w0_y[8] ;
 wire \ntt.w0_y[9] ;
 wire \ntt.w1_y[0] ;
 wire \ntt.w1_y[10] ;
 wire \ntt.w1_y[11] ;
 wire \ntt.w1_y[12] ;
 wire \ntt.w1_y[13] ;
 wire \ntt.w1_y[14] ;
 wire \ntt.w1_y[15] ;
 wire \ntt.w1_y[16] ;
 wire \ntt.w1_y[17] ;
 wire \ntt.w1_y[18] ;
 wire \ntt.w1_y[19] ;
 wire \ntt.w1_y[1] ;
 wire \ntt.w1_y[20] ;
 wire \ntt.w1_y[21] ;
 wire \ntt.w1_y[22] ;
 wire \ntt.w1_y[23] ;
 wire \ntt.w1_y[24] ;
 wire \ntt.w1_y[25] ;
 wire \ntt.w1_y[26] ;
 wire \ntt.w1_y[27] ;
 wire \ntt.w1_y[28] ;
 wire \ntt.w1_y[29] ;
 wire \ntt.w1_y[2] ;
 wire \ntt.w1_y[30] ;
 wire \ntt.w1_y[31] ;
 wire \ntt.w1_y[32] ;
 wire \ntt.w1_y[33] ;
 wire \ntt.w1_y[34] ;
 wire \ntt.w1_y[35] ;
 wire \ntt.w1_y[36] ;
 wire \ntt.w1_y[37] ;
 wire \ntt.w1_y[38] ;
 wire \ntt.w1_y[39] ;
 wire \ntt.w1_y[3] ;
 wire \ntt.w1_y[4] ;
 wire \ntt.w1_y[5] ;
 wire \ntt.w1_y[6] ;
 wire \ntt.w1_y[7] ;
 wire \ntt.w1_y[8] ;
 wire \ntt.w1_y[9] ;
 wire \ntt.w2_y[0] ;
 wire \ntt.w2_y[10] ;
 wire \ntt.w2_y[11] ;
 wire \ntt.w2_y[12] ;
 wire \ntt.w2_y[13] ;
 wire \ntt.w2_y[14] ;
 wire \ntt.w2_y[15] ;
 wire \ntt.w2_y[16] ;
 wire \ntt.w2_y[17] ;
 wire \ntt.w2_y[18] ;
 wire \ntt.w2_y[19] ;
 wire \ntt.w2_y[1] ;
 wire \ntt.w2_y[20] ;
 wire \ntt.w2_y[21] ;
 wire \ntt.w2_y[22] ;
 wire \ntt.w2_y[23] ;
 wire \ntt.w2_y[24] ;
 wire \ntt.w2_y[25] ;
 wire \ntt.w2_y[26] ;
 wire \ntt.w2_y[27] ;
 wire \ntt.w2_y[28] ;
 wire \ntt.w2_y[29] ;
 wire \ntt.w2_y[2] ;
 wire \ntt.w2_y[30] ;
 wire \ntt.w2_y[31] ;
 wire \ntt.w2_y[32] ;
 wire \ntt.w2_y[33] ;
 wire \ntt.w2_y[34] ;
 wire \ntt.w2_y[35] ;
 wire \ntt.w2_y[36] ;
 wire \ntt.w2_y[37] ;
 wire \ntt.w2_y[38] ;
 wire \ntt.w2_y[39] ;
 wire \ntt.w2_y[3] ;
 wire \ntt.w2_y[4] ;
 wire \ntt.w2_y[5] ;
 wire \ntt.w2_y[6] ;
 wire \ntt.w2_y[7] ;
 wire \ntt.w2_y[8] ;
 wire \ntt.w2_y[9] ;
 wire \ntt.w3_y[0] ;
 wire \ntt.w3_y[10] ;
 wire \ntt.w3_y[11] ;
 wire \ntt.w3_y[12] ;
 wire \ntt.w3_y[13] ;
 wire \ntt.w3_y[14] ;
 wire \ntt.w3_y[15] ;
 wire \ntt.w3_y[16] ;
 wire \ntt.w3_y[17] ;
 wire \ntt.w3_y[18] ;
 wire \ntt.w3_y[19] ;
 wire \ntt.w3_y[1] ;
 wire \ntt.w3_y[20] ;
 wire \ntt.w3_y[21] ;
 wire \ntt.w3_y[22] ;
 wire \ntt.w3_y[23] ;
 wire \ntt.w3_y[24] ;
 wire \ntt.w3_y[25] ;
 wire \ntt.w3_y[26] ;
 wire \ntt.w3_y[27] ;
 wire \ntt.w3_y[28] ;
 wire \ntt.w3_y[29] ;
 wire \ntt.w3_y[2] ;
 wire \ntt.w3_y[30] ;
 wire \ntt.w3_y[31] ;
 wire \ntt.w3_y[32] ;
 wire \ntt.w3_y[33] ;
 wire \ntt.w3_y[34] ;
 wire \ntt.w3_y[35] ;
 wire \ntt.w3_y[36] ;
 wire \ntt.w3_y[37] ;
 wire \ntt.w3_y[38] ;
 wire \ntt.w3_y[39] ;
 wire \ntt.w3_y[3] ;
 wire \ntt.w3_y[4] ;
 wire \ntt.w3_y[5] ;
 wire \ntt.w3_y[6] ;
 wire \ntt.w3_y[7] ;
 wire \ntt.w3_y[8] ;
 wire \ntt.w3_y[9] ;

 ntt_wb_bridge \ntt.u_bridge  (.busy_i(\ntt.w0_y[22] ),
    .done_i(\ntt.done ),
    .engine_rst_n_o(\ntt.engine_rst_n ),
    .mac_init_o(\ntt.mac_init ),
    .mem_re_o(\ntt.e_mem_re ),
    .mem_rvalid_i(\ntt.ext_rvalid_o ),
    .mem_target_o(\ntt.mem_target ),
    .mem_we_o(\ntt.e_mem_we ),
    .start_o(\ntt.start ),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .io_oeb_o({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .io_out_o({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .la_data_out_o({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96],
    la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64],
    la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .mem_addr_o({\ntt.mem_addr[8] ,
    \ntt.mem_addr[7] ,
    \ntt.mem_addr[6] ,
    \ntt.mem_addr[5] ,
    \ntt.mem_addr[4] ,
    \ntt.mem_addr[3] ,
    \ntt.mem_addr[2] ,
    \ntt.mem_addr[1] ,
    \ntt.mem_addr[0] }),
    .mem_rdata_i({\ntt.mem_rdata_e[31] ,
    \ntt.w0_y[35] ,
    \ntt.e0_y[34] ,
    \ntt.e0_y[31] ,
    \ntt.w0_y[28] ,
    \ntt.mem_rdata_e[26] ,
    \ntt.w0_y[32] ,
    \ntt.w0_y[34] ,
    \ntt.w0_y[27] ,
    \ntt.e0_y[28] ,
    \ntt.e0_y[27] ,
    \ntt.e0_y[33] ,
    \ntt.mem_rdata_e[19] ,
    \ntt.e0_y[30] ,
    \ntt.mem_rdata_e[17] ,
    \ntt.e0_y[26] ,
    \ntt.e0_y[32] ,
    \ntt.e0_y[25] ,
    \ntt.w0_y[33] ,
    \ntt.w0_y[26] ,
    \ntt.w0_y[25] ,
    \ntt.w0_y[31] ,
    \ntt.w0_y[24] ,
    \ntt.e0_y[29] ,
    \ntt.w0_y[30] ,
    \ntt.w0_y[29] ,
    \ntt.mem_rdata_e[5] ,
    \ntt.e0_y[24] ,
    \ntt.w0_y[23] ,
    \ntt.e0_y[23] ,
    \ntt.e0_y[22] ,
    \ntt.mem_rdata_e[0] }),
    .mem_slot_o({\ntt.mem_slot[1] ,
    \ntt.mem_slot[0] }),
    .mem_wdata_o({\ntt.mem_wdata[31] ,
    \ntt.mem_wdata[30] ,
    \ntt.mem_wdata[29] ,
    \ntt.mem_wdata[28] ,
    \ntt.mem_wdata[27] ,
    \ntt.mem_wdata[26] ,
    \ntt.mem_wdata[25] ,
    \ntt.mem_wdata[24] ,
    \ntt.mem_wdata[23] ,
    \ntt.mem_wdata[22] ,
    \ntt.mem_wdata[21] ,
    \ntt.mem_wdata[20] ,
    \ntt.mem_wdata[19] ,
    \ntt.mem_wdata[18] ,
    \ntt.mem_wdata[17] ,
    \ntt.mem_wdata[16] ,
    \ntt.mem_wdata[15] ,
    \ntt.mem_wdata[14] ,
    \ntt.mem_wdata[13] ,
    \ntt.mem_wdata[12] ,
    \ntt.mem_wdata[11] ,
    \ntt.mem_wdata[10] ,
    \ntt.mem_wdata[9] ,
    \ntt.mem_wdata[8] ,
    \ntt.mem_wdata[7] ,
    \ntt.mem_wdata[6] ,
    \ntt.mem_wdata[5] ,
    \ntt.mem_wdata[4] ,
    \ntt.mem_wdata[3] ,
    \ntt.mem_wdata[2] ,
    \ntt.mem_wdata[1] ,
    \ntt.mem_wdata[0] }),
    .op_o({\ntt.op[2] ,
    \ntt.op[1] ,
    \ntt.op[0] }),
    .slot_a_o({\ntt.slot_a[1] ,
    \ntt.slot_a[0] }),
    .slot_b_o({\ntt.slot_b[1] ,
    \ntt.slot_b[0] }),
    .slot_c_o({\ntt.slot_c[1] ,
    \ntt.slot_c[0] }),
    .user_irq_o({user_irq[2],
    user_irq[1],
    user_irq[0]}),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
 ntt_engine_256 \ntt.u_engine  (.busy(\ntt.busy_e ),
    .clk(wb_clk_i),
    .done(\ntt.done ),
    .mac_init(\ntt.w1_y[16] ),
    .mem_re(\ntt.e_mem_re ),
    .mem_rvalid(\ntt.ext_rvalid_o ),
    .mem_target(\ntt.w3_y[3] ),
    .mem_we(\ntt.e_mem_we ),
    .rst_n(\ntt.e3_y[0] ),
    .start(\ntt.e2_y[10] ),
    .mem_addr({\ntt.e2_y[13] ,
    \ntt.e3_y[5] ,
    \ntt.mem_addr[6] ,
    \ntt.w3_y[4] ,
    \ntt.e3_y[4] ,
    \ntt.e2_y[12] ,
    \ntt.e3_y[3] ,
    \ntt.e1_y[16] ,
    \ntt.mem_addr[0] }),
    .mem_rdata({\ntt.mem_rdata_e[31] ,
    \ntt.mem_rdata_e[30] ,
    \ntt.mem_rdata_e[29] ,
    \ntt.mem_rdata_e[28] ,
    \ntt.mem_rdata_e[27] ,
    \ntt.mem_rdata_e[26] ,
    \ntt.mem_rdata_e[25] ,
    \ntt.mem_rdata_e[24] ,
    \ntt.mem_rdata_e[23] ,
    \ntt.mem_rdata_e[22] ,
    \ntt.mem_rdata_e[21] ,
    \ntt.mem_rdata_e[20] ,
    \ntt.mem_rdata_e[19] ,
    \ntt.mem_rdata_e[18] ,
    \ntt.mem_rdata_e[17] ,
    \ntt.mem_rdata_e[16] ,
    \ntt.mem_rdata_e[15] ,
    \ntt.mem_rdata_e[14] ,
    \ntt.mem_rdata_e[13] ,
    \ntt.mem_rdata_e[12] ,
    \ntt.mem_rdata_e[11] ,
    \ntt.mem_rdata_e[10] ,
    \ntt.mem_rdata_e[9] ,
    \ntt.mem_rdata_e[8] ,
    \ntt.mem_rdata_e[7] ,
    \ntt.mem_rdata_e[6] ,
    \ntt.mem_rdata_e[5] ,
    \ntt.mem_rdata_e[4] ,
    \ntt.mem_rdata_e[3] ,
    \ntt.mem_rdata_e[2] ,
    \ntt.mem_rdata_e[1] ,
    \ntt.mem_rdata_e[0] }),
    .mem_slot({\ntt.e3_y[2] ,
    \ntt.mem_slot[0] }),
    .mem_wdata({\ntt.e3_y[9] ,
    \ntt.mem_wdata[30] ,
    \ntt.w2_y[14] ,
    \ntt.w1_y[19] ,
    \ntt.e3_y[8] ,
    \ntt.w3_y[9] ,
    \ntt.mem_wdata[25] ,
    \ntt.w0_y[20] ,
    \ntt.mem_wdata[23] ,
    \ntt.w3_y[8] ,
    \ntt.w3_y[7] ,
    \ntt.e2_y[15] ,
    \ntt.w2_y[13] ,
    \ntt.e1_y[20] ,
    \ntt.w3_y[6] ,
    \ntt.e1_y[19] ,
    \ntt.w3_y[5] ,
    \ntt.w1_y[18] ,
    \ntt.e1_y[18] ,
    \ntt.e2_y[14] ,
    \ntt.mem_wdata[11] ,
    \ntt.mem_wdata[10] ,
    \ntt.mem_wdata[9] ,
    \ntt.w2_y[12] ,
    \ntt.w1_y[17] ,
    \ntt.e1_y[17] ,
    \ntt.e3_y[7] ,
    \ntt.mem_wdata[4] ,
    \ntt.e3_y[6] ,
    \ntt.w2_y[11] ,
    \ntt.mem_wdata[1] ,
    \ntt.mem_wdata[0] }),
    .op({\ntt.op[2] ,
    \ntt.e2_y[11] ,
    \ntt.w2_y[10] }),
    .slot_a({\ntt.w3_y[0] ,
    \ntt.e3_y[1] }),
    .slot_b({\ntt.slot_b[1] ,
    \ntt.w3_y[1] }),
    .slot_c({\ntt.w3_y[2] ,
    \ntt.w1_y[15] }));
 ntt_repeater \ntt.u_re0  (.a({\ntt.e0_y[0] ,
    \ntt.e0_y[0] ,
    \ntt.e0_y[0] ,
    \ntt.e0_y[0] ,
    \ntt.e0_y[0] ,
    \ntt.e1_y[34] ,
    \ntt.e1_y[33] ,
    \ntt.e1_y[32] ,
    \ntt.e1_y[31] ,
    \ntt.e1_y[30] ,
    \ntt.e1_y[29] ,
    \ntt.e1_y[28] ,
    \ntt.e1_y[27] ,
    \ntt.e1_y[26] ,
    \ntt.e1_y[25] ,
    \ntt.e1_y[24] ,
    \ntt.e1_y[23] ,
    \ntt.e1_y[22] ,
    \ntt.e0_y[22] ,
    \ntt.mem_wdata[18] ,
    \ntt.mem_wdata[16] ,
    \ntt.mem_wdata[13] ,
    \ntt.mem_wdata[6] ,
    \ntt.mem_addr[1] ,
    \ntt.mem_wdata[20] ,
    \ntt.mem_wdata[12] ,
    \ntt.mem_addr[8] ,
    \ntt.mem_addr[3] ,
    \ntt.op[1] ,
    \ntt.start ,
    \ntt.mem_wdata[31] ,
    \ntt.mem_wdata[27] ,
    \ntt.mem_wdata[5] ,
    \ntt.mem_wdata[3] ,
    \ntt.mem_addr[7] ,
    \ntt.mem_addr[4] ,
    \ntt.mem_addr[2] ,
    \ntt.mem_slot[1] ,
    \ntt.slot_a[0] ,
    \ntt.engine_rst_n }),
    .y({\ntt.e0_y[39] ,
    \ntt.e0_y[38] ,
    \ntt.e0_y[37] ,
    \ntt.e0_y[36] ,
    \ntt.e0_y[35] ,
    \ntt.e0_y[34] ,
    \ntt.e0_y[33] ,
    \ntt.e0_y[32] ,
    \ntt.e0_y[31] ,
    \ntt.e0_y[30] ,
    \ntt.e0_y[29] ,
    \ntt.e0_y[28] ,
    \ntt.e0_y[27] ,
    \ntt.e0_y[26] ,
    \ntt.e0_y[25] ,
    \ntt.e0_y[24] ,
    \ntt.e0_y[23] ,
    \ntt.e0_y[22] ,
    \ntt.e0_y[21] ,
    \ntt.e0_y[20] ,
    \ntt.e0_y[19] ,
    \ntt.e0_y[18] ,
    \ntt.e0_y[17] ,
    \ntt.e0_y[16] ,
    \ntt.e0_y[15] ,
    \ntt.e0_y[14] ,
    \ntt.e0_y[13] ,
    \ntt.e0_y[12] ,
    \ntt.e0_y[11] ,
    \ntt.e0_y[10] ,
    \ntt.e0_y[9] ,
    \ntt.e0_y[8] ,
    \ntt.e0_y[7] ,
    \ntt.e0_y[6] ,
    \ntt.e0_y[5] ,
    \ntt.e0_y[4] ,
    \ntt.e0_y[3] ,
    \ntt.e0_y[2] ,
    \ntt.e0_y[1] ,
    \ntt.e0_y[0] }));
 ntt_repeater \ntt.u_re1  (.a({\ntt.e1_y[0] ,
    \ntt.e1_y[0] ,
    \ntt.e1_y[0] ,
    \ntt.e1_y[0] ,
    \ntt.e1_y[0] ,
    \ntt.mem_rdata_e[29] ,
    \ntt.mem_rdata_e[20] ,
    \ntt.mem_rdata_e[15] ,
    \ntt.e2_y[31] ,
    \ntt.e2_y[30] ,
    \ntt.e2_y[29] ,
    \ntt.e2_y[28] ,
    \ntt.e2_y[27] ,
    \ntt.e2_y[26] ,
    \ntt.e2_y[25] ,
    \ntt.e2_y[24] ,
    \ntt.e2_y[23] ,
    \ntt.e2_y[22] ,
    \ntt.e1_y[22] ,
    \ntt.e0_y[20] ,
    \ntt.e0_y[19] ,
    \ntt.e0_y[18] ,
    \ntt.e0_y[17] ,
    \ntt.e0_y[16] ,
    \ntt.e0_y[15] ,
    \ntt.e0_y[14] ,
    \ntt.e0_y[13] ,
    \ntt.e0_y[12] ,
    \ntt.e0_y[11] ,
    \ntt.e0_y[10] ,
    \ntt.e0_y[9] ,
    \ntt.e0_y[8] ,
    \ntt.e0_y[7] ,
    \ntt.e0_y[6] ,
    \ntt.e0_y[5] ,
    \ntt.e0_y[4] ,
    \ntt.e0_y[3] ,
    \ntt.e0_y[2] ,
    \ntt.e0_y[1] ,
    \ntt.e0_y[0] }),
    .y({\ntt.e1_y[39] ,
    \ntt.e1_y[38] ,
    \ntt.e1_y[37] ,
    \ntt.e1_y[36] ,
    \ntt.e1_y[35] ,
    \ntt.e1_y[34] ,
    \ntt.e1_y[33] ,
    \ntt.e1_y[32] ,
    \ntt.e1_y[31] ,
    \ntt.e1_y[30] ,
    \ntt.e1_y[29] ,
    \ntt.e1_y[28] ,
    \ntt.e1_y[27] ,
    \ntt.e1_y[26] ,
    \ntt.e1_y[25] ,
    \ntt.e1_y[24] ,
    \ntt.e1_y[23] ,
    \ntt.e1_y[22] ,
    \ntt.e1_y[21] ,
    \ntt.e1_y[20] ,
    \ntt.e1_y[19] ,
    \ntt.e1_y[18] ,
    \ntt.e1_y[17] ,
    \ntt.e1_y[16] ,
    \ntt.e1_y[15] ,
    \ntt.e1_y[14] ,
    \ntt.e1_y[13] ,
    \ntt.e1_y[12] ,
    \ntt.e1_y[11] ,
    \ntt.e1_y[10] ,
    \ntt.e1_y[9] ,
    \ntt.e1_y[8] ,
    \ntt.e1_y[7] ,
    \ntt.e1_y[6] ,
    \ntt.e1_y[5] ,
    \ntt.e1_y[4] ,
    \ntt.e1_y[3] ,
    \ntt.e1_y[2] ,
    \ntt.e1_y[1] ,
    \ntt.e1_y[0] }));
 ntt_repeater \ntt.u_re2  (.a({\ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.e2_y[0] ,
    \ntt.mem_rdata_e[28] ,
    \ntt.mem_rdata_e[18] ,
    \ntt.mem_rdata_e[8] ,
    \ntt.e3_y[28] ,
    \ntt.e3_y[27] ,
    \ntt.e3_y[26] ,
    \ntt.e3_y[25] ,
    \ntt.e3_y[24] ,
    \ntt.e3_y[23] ,
    \ntt.e3_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[22] ,
    \ntt.e1_y[15] ,
    \ntt.e1_y[14] ,
    \ntt.e1_y[13] ,
    \ntt.e1_y[12] ,
    \ntt.e1_y[11] ,
    \ntt.e1_y[10] ,
    \ntt.e1_y[9] ,
    \ntt.e1_y[8] ,
    \ntt.e1_y[7] ,
    \ntt.e1_y[6] ,
    \ntt.e1_y[5] ,
    \ntt.e1_y[4] ,
    \ntt.e1_y[3] ,
    \ntt.e1_y[2] ,
    \ntt.e1_y[1] ,
    \ntt.e1_y[0] }),
    .y({\ntt.e2_y[39] ,
    \ntt.e2_y[38] ,
    \ntt.e2_y[37] ,
    \ntt.e2_y[36] ,
    \ntt.e2_y[35] ,
    \ntt.e2_y[34] ,
    \ntt.e2_y[33] ,
    \ntt.e2_y[32] ,
    \ntt.e2_y[31] ,
    \ntt.e2_y[30] ,
    \ntt.e2_y[29] ,
    \ntt.e2_y[28] ,
    \ntt.e2_y[27] ,
    \ntt.e2_y[26] ,
    \ntt.e2_y[25] ,
    \ntt.e2_y[24] ,
    \ntt.e2_y[23] ,
    \ntt.e2_y[22] ,
    \ntt.e2_y[21] ,
    \ntt.e2_y[20] ,
    \ntt.e2_y[19] ,
    \ntt.e2_y[18] ,
    \ntt.e2_y[17] ,
    \ntt.e2_y[16] ,
    \ntt.e2_y[15] ,
    \ntt.e2_y[14] ,
    \ntt.e2_y[13] ,
    \ntt.e2_y[12] ,
    \ntt.e2_y[11] ,
    \ntt.e2_y[10] ,
    \ntt.e2_y[9] ,
    \ntt.e2_y[8] ,
    \ntt.e2_y[7] ,
    \ntt.e2_y[6] ,
    \ntt.e2_y[5] ,
    \ntt.e2_y[4] ,
    \ntt.e2_y[3] ,
    \ntt.e2_y[2] ,
    \ntt.e2_y[1] ,
    \ntt.e2_y[0] }));
 ntt_repeater \ntt.u_re3  (.a({\ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.e3_y[0] ,
    \ntt.mem_rdata_e[22] ,
    \ntt.mem_rdata_e[21] ,
    \ntt.mem_rdata_e[16] ,
    \ntt.mem_rdata_e[14] ,
    \ntt.mem_rdata_e[4] ,
    \ntt.mem_rdata_e[2] ,
    \ntt.mem_rdata_e[1] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[22] ,
    \ntt.e2_y[9] ,
    \ntt.e2_y[8] ,
    \ntt.e2_y[7] ,
    \ntt.e2_y[6] ,
    \ntt.e2_y[5] ,
    \ntt.e2_y[4] ,
    \ntt.e2_y[3] ,
    \ntt.e2_y[2] ,
    \ntt.e2_y[1] ,
    \ntt.e2_y[0] }),
    .y({\ntt.e3_y[39] ,
    \ntt.e3_y[38] ,
    \ntt.e3_y[37] ,
    \ntt.e3_y[36] ,
    \ntt.e3_y[35] ,
    \ntt.e3_y[34] ,
    \ntt.e3_y[33] ,
    \ntt.e3_y[32] ,
    \ntt.e3_y[31] ,
    \ntt.e3_y[30] ,
    \ntt.e3_y[29] ,
    \ntt.e3_y[28] ,
    \ntt.e3_y[27] ,
    \ntt.e3_y[26] ,
    \ntt.e3_y[25] ,
    \ntt.e3_y[24] ,
    \ntt.e3_y[23] ,
    \ntt.e3_y[22] ,
    \ntt.e3_y[21] ,
    \ntt.e3_y[20] ,
    \ntt.e3_y[19] ,
    \ntt.e3_y[18] ,
    \ntt.e3_y[17] ,
    \ntt.e3_y[16] ,
    \ntt.e3_y[15] ,
    \ntt.e3_y[14] ,
    \ntt.e3_y[13] ,
    \ntt.e3_y[12] ,
    \ntt.e3_y[11] ,
    \ntt.e3_y[10] ,
    \ntt.e3_y[9] ,
    \ntt.e3_y[8] ,
    \ntt.e3_y[7] ,
    \ntt.e3_y[6] ,
    \ntt.e3_y[5] ,
    \ntt.e3_y[4] ,
    \ntt.e3_y[3] ,
    \ntt.e3_y[2] ,
    \ntt.e3_y[1] ,
    \ntt.e3_y[0] }));
 ntt_repeater \ntt.u_rw0  (.a({\ntt.w0_y[0] ,
    \ntt.w0_y[0] ,
    \ntt.w0_y[0] ,
    \ntt.w0_y[0] ,
    \ntt.w1_y[35] ,
    \ntt.w1_y[34] ,
    \ntt.w1_y[33] ,
    \ntt.w1_y[32] ,
    \ntt.w1_y[31] ,
    \ntt.w1_y[30] ,
    \ntt.w1_y[29] ,
    \ntt.w1_y[28] ,
    \ntt.w1_y[27] ,
    \ntt.w1_y[26] ,
    \ntt.w1_y[25] ,
    \ntt.w1_y[24] ,
    \ntt.w1_y[23] ,
    \ntt.w1_y[22] ,
    \ntt.w0_y[22] ,
    \ntt.mem_wdata[24] ,
    \ntt.mem_wdata[28] ,
    \ntt.mem_wdata[14] ,
    \ntt.mem_wdata[7] ,
    \ntt.mac_init ,
    \ntt.slot_c[0] ,
    \ntt.mem_wdata[29] ,
    \ntt.mem_wdata[19] ,
    \ntt.mem_wdata[8] ,
    \ntt.mem_wdata[2] ,
    \ntt.op[0] ,
    \ntt.mem_wdata[26] ,
    \ntt.mem_wdata[22] ,
    \ntt.mem_wdata[21] ,
    \ntt.mem_wdata[17] ,
    \ntt.mem_wdata[15] ,
    \ntt.mem_addr[5] ,
    \ntt.mem_target ,
    \ntt.slot_c[1] ,
    \ntt.slot_b[0] ,
    \ntt.slot_a[1] }),
    .y({\ntt.w0_y[39] ,
    \ntt.w0_y[38] ,
    \ntt.w0_y[37] ,
    \ntt.w0_y[36] ,
    \ntt.w0_y[35] ,
    \ntt.w0_y[34] ,
    \ntt.w0_y[33] ,
    \ntt.w0_y[32] ,
    \ntt.w0_y[31] ,
    \ntt.w0_y[30] ,
    \ntt.w0_y[29] ,
    \ntt.w0_y[28] ,
    \ntt.w0_y[27] ,
    \ntt.w0_y[26] ,
    \ntt.w0_y[25] ,
    \ntt.w0_y[24] ,
    \ntt.w0_y[23] ,
    \ntt.w0_y[22] ,
    \ntt.w0_y[21] ,
    \ntt.w0_y[20] ,
    \ntt.w0_y[19] ,
    \ntt.w0_y[18] ,
    \ntt.w0_y[17] ,
    \ntt.w0_y[16] ,
    \ntt.w0_y[15] ,
    \ntt.w0_y[14] ,
    \ntt.w0_y[13] ,
    \ntt.w0_y[12] ,
    \ntt.w0_y[11] ,
    \ntt.w0_y[10] ,
    \ntt.w0_y[9] ,
    \ntt.w0_y[8] ,
    \ntt.w0_y[7] ,
    \ntt.w0_y[6] ,
    \ntt.w0_y[5] ,
    \ntt.w0_y[4] ,
    \ntt.w0_y[3] ,
    \ntt.w0_y[2] ,
    \ntt.w0_y[1] ,
    \ntt.w0_y[0] }));
 ntt_repeater \ntt.u_rw1  (.a({\ntt.w1_y[0] ,
    \ntt.w1_y[0] ,
    \ntt.w1_y[0] ,
    \ntt.w1_y[0] ,
    \ntt.mem_rdata_e[30] ,
    \ntt.mem_rdata_e[24] ,
    \ntt.mem_rdata_e[13] ,
    \ntt.w2_y[32] ,
    \ntt.w2_y[31] ,
    \ntt.w2_y[30] ,
    \ntt.w2_y[29] ,
    \ntt.w2_y[28] ,
    \ntt.w2_y[27] ,
    \ntt.w2_y[26] ,
    \ntt.w2_y[25] ,
    \ntt.w2_y[24] ,
    \ntt.w2_y[23] ,
    \ntt.w2_y[22] ,
    \ntt.w1_y[22] ,
    \ntt.w1_y[22] ,
    \ntt.w0_y[19] ,
    \ntt.w0_y[18] ,
    \ntt.w0_y[17] ,
    \ntt.w0_y[16] ,
    \ntt.w0_y[15] ,
    \ntt.w0_y[14] ,
    \ntt.w0_y[13] ,
    \ntt.w0_y[12] ,
    \ntt.w0_y[11] ,
    \ntt.w0_y[10] ,
    \ntt.w0_y[9] ,
    \ntt.w0_y[8] ,
    \ntt.w0_y[7] ,
    \ntt.w0_y[6] ,
    \ntt.w0_y[5] ,
    \ntt.w0_y[4] ,
    \ntt.w0_y[3] ,
    \ntt.w0_y[2] ,
    \ntt.w0_y[1] ,
    \ntt.w0_y[0] }),
    .y({\ntt.w1_y[39] ,
    \ntt.w1_y[38] ,
    \ntt.w1_y[37] ,
    \ntt.w1_y[36] ,
    \ntt.w1_y[35] ,
    \ntt.w1_y[34] ,
    \ntt.w1_y[33] ,
    \ntt.w1_y[32] ,
    \ntt.w1_y[31] ,
    \ntt.w1_y[30] ,
    \ntt.w1_y[29] ,
    \ntt.w1_y[28] ,
    \ntt.w1_y[27] ,
    \ntt.w1_y[26] ,
    \ntt.w1_y[25] ,
    \ntt.w1_y[24] ,
    \ntt.w1_y[23] ,
    \ntt.w1_y[22] ,
    \ntt.w1_y[21] ,
    \ntt.w1_y[20] ,
    \ntt.w1_y[19] ,
    \ntt.w1_y[18] ,
    \ntt.w1_y[17] ,
    \ntt.w1_y[16] ,
    \ntt.w1_y[15] ,
    \ntt.w1_y[14] ,
    \ntt.w1_y[13] ,
    \ntt.w1_y[12] ,
    \ntt.w1_y[11] ,
    \ntt.w1_y[10] ,
    \ntt.w1_y[9] ,
    \ntt.w1_y[8] ,
    \ntt.w1_y[7] ,
    \ntt.w1_y[6] ,
    \ntt.w1_y[5] ,
    \ntt.w1_y[4] ,
    \ntt.w1_y[3] ,
    \ntt.w1_y[2] ,
    \ntt.w1_y[1] ,
    \ntt.w1_y[0] }));
 ntt_repeater \ntt.u_rw2  (.a({\ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.w2_y[0] ,
    \ntt.mem_rdata_e[25] ,
    \ntt.mem_rdata_e[10] ,
    \ntt.mem_rdata_e[7] ,
    \ntt.mem_rdata_e[6] ,
    \ntt.w3_y[28] ,
    \ntt.w3_y[27] ,
    \ntt.w3_y[26] ,
    \ntt.w3_y[25] ,
    \ntt.w3_y[24] ,
    \ntt.w3_y[23] ,
    \ntt.w3_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[22] ,
    \ntt.w1_y[14] ,
    \ntt.w1_y[13] ,
    \ntt.w1_y[12] ,
    \ntt.w1_y[11] ,
    \ntt.w1_y[10] ,
    \ntt.w1_y[9] ,
    \ntt.w1_y[8] ,
    \ntt.w1_y[7] ,
    \ntt.w1_y[6] ,
    \ntt.w1_y[5] ,
    \ntt.w1_y[4] ,
    \ntt.w1_y[3] ,
    \ntt.w1_y[2] ,
    \ntt.w1_y[1] ,
    \ntt.w1_y[0] }),
    .y({\ntt.w2_y[39] ,
    \ntt.w2_y[38] ,
    \ntt.w2_y[37] ,
    \ntt.w2_y[36] ,
    \ntt.w2_y[35] ,
    \ntt.w2_y[34] ,
    \ntt.w2_y[33] ,
    \ntt.w2_y[32] ,
    \ntt.w2_y[31] ,
    \ntt.w2_y[30] ,
    \ntt.w2_y[29] ,
    \ntt.w2_y[28] ,
    \ntt.w2_y[27] ,
    \ntt.w2_y[26] ,
    \ntt.w2_y[25] ,
    \ntt.w2_y[24] ,
    \ntt.w2_y[23] ,
    \ntt.w2_y[22] ,
    \ntt.w2_y[21] ,
    \ntt.w2_y[20] ,
    \ntt.w2_y[19] ,
    \ntt.w2_y[18] ,
    \ntt.w2_y[17] ,
    \ntt.w2_y[16] ,
    \ntt.w2_y[15] ,
    \ntt.w2_y[14] ,
    \ntt.w2_y[13] ,
    \ntt.w2_y[12] ,
    \ntt.w2_y[11] ,
    \ntt.w2_y[10] ,
    \ntt.w2_y[9] ,
    \ntt.w2_y[8] ,
    \ntt.w2_y[7] ,
    \ntt.w2_y[6] ,
    \ntt.w2_y[5] ,
    \ntt.w2_y[4] ,
    \ntt.w2_y[3] ,
    \ntt.w2_y[2] ,
    \ntt.w2_y[1] ,
    \ntt.w2_y[0] }));
 ntt_repeater \ntt.u_rw3  (.a({\ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.w3_y[0] ,
    \ntt.mem_rdata_e[27] ,
    \ntt.mem_rdata_e[23] ,
    \ntt.mem_rdata_e[12] ,
    \ntt.mem_rdata_e[11] ,
    \ntt.mem_rdata_e[9] ,
    \ntt.mem_rdata_e[3] ,
    \ntt.busy_e ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[22] ,
    \ntt.w2_y[9] ,
    \ntt.w2_y[8] ,
    \ntt.w2_y[7] ,
    \ntt.w2_y[6] ,
    \ntt.w2_y[5] ,
    \ntt.w2_y[4] ,
    \ntt.w2_y[3] ,
    \ntt.w2_y[2] ,
    \ntt.w2_y[1] ,
    \ntt.w2_y[0] }),
    .y({\ntt.w3_y[39] ,
    \ntt.w3_y[38] ,
    \ntt.w3_y[37] ,
    \ntt.w3_y[36] ,
    \ntt.w3_y[35] ,
    \ntt.w3_y[34] ,
    \ntt.w3_y[33] ,
    \ntt.w3_y[32] ,
    \ntt.w3_y[31] ,
    \ntt.w3_y[30] ,
    \ntt.w3_y[29] ,
    \ntt.w3_y[28] ,
    \ntt.w3_y[27] ,
    \ntt.w3_y[26] ,
    \ntt.w3_y[25] ,
    \ntt.w3_y[24] ,
    \ntt.w3_y[23] ,
    \ntt.w3_y[22] ,
    \ntt.w3_y[21] ,
    \ntt.w3_y[20] ,
    \ntt.w3_y[19] ,
    \ntt.w3_y[18] ,
    \ntt.w3_y[17] ,
    \ntt.w3_y[16] ,
    \ntt.w3_y[15] ,
    \ntt.w3_y[14] ,
    \ntt.w3_y[13] ,
    \ntt.w3_y[12] ,
    \ntt.w3_y[11] ,
    \ntt.w3_y[10] ,
    \ntt.w3_y[9] ,
    \ntt.w3_y[8] ,
    \ntt.w3_y[7] ,
    \ntt.w3_y[6] ,
    \ntt.w3_y[5] ,
    \ntt.w3_y[4] ,
    \ntt.w3_y[3] ,
    \ntt.w3_y[2] ,
    \ntt.w3_y[1] ,
    \ntt.w3_y[0] }));
endmodule

