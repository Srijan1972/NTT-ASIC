# Caravel Wishbone clock and boundary constraints for the hardened NTT macro.
create_clock -name wb_clk -period $::env(CLOCK_PERIOD) [get_ports wb_clk_i]
set_propagated_clock [get_clocks wb_clk]
set_clock_uncertainty 0.25 [get_clocks wb_clk]
set_clock_transition 0.15 [get_clocks wb_clk]

set wb_inputs [get_ports {wb_rst_i wbs_stb_i wbs_cyc_i wbs_we_i wbs_sel_i[*] wbs_dat_i[*] wbs_adr_i[*]}]
set_input_delay 4.0 -clock wb_clk $wb_inputs
set_output_delay 4.0 -clock wb_clk [all_outputs]
set_input_transition 0.15 $wb_inputs
set_load 0.10 [all_outputs]

set_max_transition $::env(MAX_TRANSITION_CONSTRAINT) [current_design]
set_max_fanout $::env(MAX_FANOUT_CONSTRAINT) [current_design]
