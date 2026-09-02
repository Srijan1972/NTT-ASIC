create_clock -name clk -period $::env(CLOCK_PERIOD) [get_ports clk]
set_propagated_clock [get_clocks clk]
set_clock_uncertainty 0.25 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]

set engine_inputs [get_ports {rst_n start op[*] slot_a[*] slot_b[*] slot_c[*] mac_init mem_we mem_re mem_target mem_slot[*] mem_addr[*] mem_wdata[*]}]
set_input_delay 2.0 -clock clk $engine_inputs
set_output_delay 2.0 -clock clk [all_outputs]
set_input_transition 0.15 $engine_inputs
set_load 0.10 [all_outputs]

set_false_path -from [get_ports rst_n]
set_max_transition $::env(MAX_TRANSITION_CONSTRAINT) [current_design]
set_max_fanout $::env(MAX_FANOUT_CONSTRAINT) [current_design]
