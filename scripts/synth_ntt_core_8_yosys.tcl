# Basic Yosys synthesizability check for the fuller accelerator core.
# This is generic RTL synthesis/elaboration, not full physical layout.

read_verilog -sv rtl/mod_add.sv
read_verilog -sv rtl/mod_sub.sv
read_verilog -sv rtl/modmul_montgomery.sv
read_verilog -sv rtl/ntt_butterfly.sv
read_verilog -sv rtl/ntt_stage_2.sv
read_verilog -sv rtl/ntt_stage_4.sv
read_verilog -sv rtl/ntt_stage_8.sv
read_verilog -sv rtl/ntt_core_8.sv

hierarchy -check -top ntt_core_8
proc
opt
memory
opt
check
stat
