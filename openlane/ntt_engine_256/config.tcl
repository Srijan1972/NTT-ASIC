set ::env(DESIGN_NAME) ntt_engine_256

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.sv $::env(DESIGN_DIR)/src/*.v]
set ::env(SYNTH_DEFINES) "USE_SRAM_MACRO"

# --- SRAM macro ---
set ::env(VERILOG_FILES_BLACKBOX) "$::env(DESIGN_DIR)/macros/sky130_sram_1kbyte_1rw1r_32x256_8.v"
set ::env(EXTRA_LEFS) "$::env(DESIGN_DIR)/macros/sky130_sram_1kbyte_1rw1r_32x256_8.lef"
set ::env(EXTRA_GDS_FILES) "$::env(DESIGN_DIR)/macros/sky130_sram_1kbyte_1rw1r_32x256_8.gds"
set ::env(EXTRA_LIBS) "$::env(DESIGN_DIR)/macros/sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib"

# --- clock ---
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(BASE_SDC_FILE) "$::env(DESIGN_DIR)/ntt_engine_256.sdc"

# --- floorplan ---
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 2400 2400"
set ::env(FP_CORE_UTIL) 25
set ::env(PL_TARGET_DENSITY) 0.40
set ::env(MACRO_PLACEMENT_CFG) "$::env(DESIGN_DIR)/macro_placement.cfg"

# --- PDN hooks for SRAM macros---
set ::env(FP_PDN_MACRO_HOOKS) {.*u_ram.u_macro VPWR VGND vccd1 vssd1}
set ::env(FP_PDN_ENABLE_RAILS) 1

# --- routing ---
set ::env(RT_MAX_LAYER) "met4"
set ::env(GRT_ALLOW_CONGESTION) 0
set ::env(DIODE_INSERTION_STRATEGY) 3

# --- misc ---
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(QUIT_ON_TIMING_VIOLATIONS) 0
set ::env(QUIT_ON_MAGIC_DRC) 1
set ::env(QUIT_ON_LVS_ERROR) 1
set ::env(RUN_LINTER) 0
set ::env(MAGIC_DRC_USE_GDS) 0
set ::env(QUIT_ON_MAGIC_DRC) 0
set ::env(SYNTH_STRATEGY) "DELAY 1"
set ::env(GRT_ADJUSTMENT) 0.3
set ::env(PL_TARGET_DENSITY) 0.40
set ::env(PL_MACRO_HALO) "20 20"
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) 1.0
set ::env(PL_RESIZER_MAX_SLEW_MARGIN) 20
