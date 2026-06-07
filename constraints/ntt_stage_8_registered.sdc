# Starter timing constraints for OpenLane/ASIC handoff.
# The OpenLane owner should tune CLOCK_PERIOD for the target PDK and timing goal.

create_clock -name clk -period 10.000 [get_ports clk]

set_input_delay 1.000 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 1.000 -clock clk [all_outputs]
