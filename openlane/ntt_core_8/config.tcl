# OpenLane classic starter config for ntt_core_8.
# This is a handoff starter, not a guaranteed final floorplan.

set ::env(DESIGN_NAME) ntt_core_8

set ::env(VERILOG_FILES) [list \
    $::env(DESIGN_DIR)/../../rtl/mod_add.sv \
    $::env(DESIGN_DIR)/../../rtl/mod_sub.sv \
    $::env(DESIGN_DIR)/../../rtl/modmul_montgomery.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_butterfly.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_stage_2.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_stage_4.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_stage_8.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_core_8.sv \
]

set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.000

# Conservative starter values for an exploratory run.
# The OpenLane owner should tune these for the selected PDK and utilization target.
set ::env(FP_CORE_UTIL) 30
set ::env(PL_TARGET_DENSITY) 0.35

# ntt_core_8 uses small inferred register arrays for data/twiddle storage.
# For a realistic larger core, replace/wrap memories with process-specific SRAM macros.
