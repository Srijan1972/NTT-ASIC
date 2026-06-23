# OpenLane classic starter config for the SRAM-backed full 256-point NTT RTL top.
# This is a physical-flow starting point, not final tapeout signoff.
#
# IMPORTANT:
# - `asic_sram_1rw.sv` is a generic SRAM wrapper/behavioral model.
# - For a real tapeout flow, bind this wrapper to a PDK-specific SRAM macro
#   or replace it with macro-specific wrapper instances and add the macro
#   LEF/GDS/LIB/Verilog views to the OpenLane flow.

set ::env(DESIGN_NAME) ntt_core_256_sram

set ::env(VERILOG_FILES) [list \
    $::env(DESIGN_DIR)/../../rtl/asic_sram_1rw.sv \
    $::env(DESIGN_DIR)/../../rtl/mod_add.sv \
    $::env(DESIGN_DIR)/../../rtl/mod_sub.sv \
    $::env(DESIGN_DIR)/../../rtl/modmul_montgomery.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_butterfly.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_core_256_sram.sv \
]

set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.000

set ::env(FP_CORE_UTIL) 25
set ::env(PL_TARGET_DENSITY) 0.45
