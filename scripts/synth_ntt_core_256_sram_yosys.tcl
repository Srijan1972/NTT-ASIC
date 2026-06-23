# Basic Yosys synthesizability check for the SRAM-backed full 256-point NTT ASIC RTL top.
# This is generic RTL synthesis/elaboration, not final physical layout or tapeout signoff.

read_verilog -sv rtl/asic_sram_1rw.sv
read_verilog -sv rtl/mod_add.sv
read_verilog -sv rtl/mod_sub.sv
read_verilog -sv rtl/modmul_montgomery.sv
read_verilog -sv rtl/ntt_butterfly.sv
read_verilog -sv rtl/ntt_core_256_sram.sv

hierarchy -check -top ntt_core_256_sram
proc
opt
memory
opt
check
stat
