# Clockless repeater. Virtual clock only so combinational in->out arcs are
# constrained and every STA/resizer step has something to report against.
create_clock -name virt -period $::env(CLOCK_PERIOD)
set_input_delay  1.0 -clock virt [all_inputs]
set_output_delay 1.0 -clock virt [all_outputs]

# Upstream segment is ~1.3 mm of wrapper wire; be honest about the edge arriving.
set_input_transition 1.0 [all_inputs]
# Downstream segment is <= ~1.6 mm (~0.35 pF). 1.2 keeps the proven clkbuf_16 sizing.
set_load 1.2 [all_outputs]

set_max_transition $::env(MAX_TRANSITION_CONSTRAINT) [current_design]
set_max_fanout $::env(MAX_FANOUT_CONSTRAINT) [current_design]
