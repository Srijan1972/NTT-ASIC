create_clock -name clk -period $::env(CLOCK_PERIOD) [get_ports clk]
set_clock_uncertainty 0.25 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]

set_input_delay 2.0 -clock clk [get_ports {rst_n start op[*] slot_a[*] slot_b[*] slot_c[*] mac_init ext_we ext_wslot[*] ext_waddr[*] ext_wdata[*] ext_re ext_rslot[*] ext_raddr[*] zload_we zload_addr[*] zload_data[*]}]
set_output_delay 2.0 -clock clk [all_outputs]

set_false_path -from [get_ports rst_n]
