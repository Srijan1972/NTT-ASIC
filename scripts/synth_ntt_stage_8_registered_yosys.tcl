# Basic Yosys synthesizability check for the OpenLane handoff top.
# This is generic RTL synthesis/elaboration, not full physical layout.

read_verilog -sv rtl/mod_add.sv
read_verilog -sv rtl/mod_sub.sv
read_verilog -sv rtl/modmul_montgomery.sv
read_verilog -sv rtl/ntt_butterfly.sv
read_verilog -sv rtl/ntt_stage_2.sv
read_verilog -sv rtl/ntt_stage_4.sv
read_verilog -sv rtl/ntt_stage_8.sv
read_verilog -sv rtl/ntt_stage_8_registered.sv

hierarchy -check -top ntt_stage_8_registered
proc
opt
memory
opt
check
stat
