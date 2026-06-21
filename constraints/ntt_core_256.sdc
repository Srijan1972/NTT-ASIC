# Starter timing constraints for the full 256-point NTT ASIC RTL top.
# The physical-design owner must tune this for the selected PDK, SRAM/macros, and timing target.

create_clock -name clk -period 10.000 [get_ports clk]

set_input_delay 1.000 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 1.000 -clock clk [all_outputs]
