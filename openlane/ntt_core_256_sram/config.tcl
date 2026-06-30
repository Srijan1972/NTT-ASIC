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
    $::env(DESIGN_DIR)/../../rtl/asic_sram_1rw_sky130.v \
    $::env(DESIGN_DIR)/../../rtl/mod_add.sv \
    $::env(DESIGN_DIR)/../../rtl/mod_sub.sv \
    $::env(DESIGN_DIR)/../../rtl/modmul_montgomery.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_butterfly.sv \
    $::env(DESIGN_DIR)/../../rtl/ntt_core_256_sram.sv \
]

set ::env(VERILOG_FILES_BLACKBOX) [list \
    $::env(DESIGN_DIR)/bb/sky130_sram_1kbyte_1rw1r_32x256_8.v \
    $::env(DESIGN_DIR)/bb/sky130_sram_1kbyte_1rw1r_8x1024_8.v \
]

set ::env(EXTRA_LEFS) [list \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/lef/sky130_sram_1kbyte_1rw1r_32x256_8.lef \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/lef/sky130_sram_1kbyte_1rw1r_8x1024_8.lef \
]

set ::env(EXTRA_GDS_FILES) [list \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/gds/sky130_sram_1kbyte_1rw1r_8x1024_8.gds \
]

set ::env(EXTRA_LIBS) [list \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/lib/sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/lib/sky130_sram_1kbyte_1rw1r_8x1024_8_TT_1p8V_25C.lib \
]

set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro_placement.cfg
set ::env(FP_PDN_MACRO_HOOKS) "\
input_sram.gen_32x256.sram32 VPWR VGND vccd1 vssd1, \
bitrev_sram.gen_8x1024.sram8 VPWR VGND vccd1 vssd1, \
twiddle_sram.gen_32x256.sram32 VPWR VGND vccd1 vssd1, \
ping_sram.gen_32x256.sram32 VPWR VGND vccd1 vssd1, \
pong_sram.gen_32x256.sram32 VPWR VGND vccd1 vssd1"

set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.000

set ::env(FP_CORE_UTIL) 25
set ::env(PL_TARGET_DENSITY) 0.45
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 1800 1800"
set ::env(CORE_AREA) "20 20 1780 1780"
set ::env(PL_MACRO_HALO) {10 10}
set ::env(PL_MACRO_CHANNEL) {20 20}
# Keep XOR disabled for now because the committed run notes say KLayout XOR
# was killed by memory pressure on the SRAM-macro GDS. LVS should be enabled
# while debugging the reported unmatched-net issue.
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_LVS) 1
set ::env(MAGIC_DRC_USE_GDS) 0
set ::env(QUIT_ON_MAGIC_DRC) 0
set ::env(GRT_MAX_DIODE_INS_ITERS) 5
set ::env(GRT_ANT_MARGIN) 50
set ::env(RUN_HEURISTIC_DIODE_INSERTION) 1
set ::env(HEURISTIC_ANTENNA_THRESHOLD) 400
