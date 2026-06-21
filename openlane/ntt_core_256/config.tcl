# OpenLane classic starter config for the full 256-point NTT RTL top.
# This is a physical-flow starting point, not final tapeout signoff.

set ::env(DESIGN_NAME) ntt_core_256

set ::env(VERILOG_FILES) [list \
    $::env(DESIGN_DIR)/../../rtl/mod_add.sv \
    $::env(DESIGN_DIR)/../../rtl/mod_sub.sv \
    $::env(DESIGN_DIR)/../../rtl/modmul_montgomery.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_butterfly.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_core_256.sv \
]

set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.000

# Starter floorplan values. The OpenLane owner should tune utilization,
# aspect ratio, margins, and any SRAM macro placement once the target PDK
# and macro strategy are selected.
set ::env(FP_CORE_UTIL) 25
set ::env(PL_TARGET_DENSITY) 0.45

# The design currently uses inferred/register-array storage for bring-up.
# For production-scale area/timing, replace/wrap memories with real SRAM
# macros selected for the target PDK.
