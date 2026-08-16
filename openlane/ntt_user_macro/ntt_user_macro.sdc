create_clock -name wb_clk -period $::env(CLOCK_PERIOD) [get_ports wb_clk_i]
set_clock_uncertainty 0.25 [get_clocks wb_clk]
set_clock_transition 0.15 [get_clocks wb_clk]

set_input_delay 2.0 -clock wb_clk [get_ports {wbs_stb_i wbs_cyc_i wbs_we_i wbs_sel_i[*] wbs_dat_i[*] wbs_adr_i[*]}]
set_output_delay 2.0 -clock wb_clk [get_ports {wbs_ack_o wbs_dat_o[*] busy_o done_o irq[*]}]
set_false_path -from [get_ports wb_rst_i]
