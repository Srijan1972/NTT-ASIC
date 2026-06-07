# Basic Yosys synthesizability check for ntt_stage_8.
# This does not do ASIC physical layout.
# It only checks that the RTL can be elaborated and optimized as hardware.

read_verilog -sv rtl/mod_add.sv
read_verilog -sv rtl/mod_sub.sv
read_verilog -sv rtl/modmul_montgomery.sv
read_verilog -sv rtl/ntt_butterfly.sv
read_verilog -sv rtl/ntt_stage_2.sv
read_verilog -sv rtl/ntt_stage_4.sv
read_verilog -sv rtl/ntt_stage_8.sv

hierarchy -check -top ntt_stage_8
proc
opt
memory
opt
check
stat
