package require openlane
prep -design /work/openlane/ntt_core_256_sram -tag RUN_2026.07.01_lvs_final_lef -overwrite
set ::env(CURRENT_DEF) /work/openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/def/ntt_core_256_sram.def
set ::env(CURRENT_POWERED_NETLIST) /work/openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/verilog/gl/ntt_core_256_sram.nl.v
set ::env(LVS_INSERT_POWER_PINS) 0
set ::env(QUIT_ON_LVS_ERROR) 0
if {[info exists ::env(MAGIC_EXT_USE_GDS)]} { unset ::env(MAGIC_EXT_USE_GDS) }
run_magic_spice_export
run_lvs
calc_total_runtime
save_state
generate_final_summary_report
