# LVS Status Report

Date generated: 2026-07-01
Design: `ntt_core_256_sram`
OpenLane version: `v1.0.2 (ff5509f65b17bfa4068d5336495ab1718987ff69)`
PDK: `sky130A`
Standard cell library: `sky130_fd_sc_hd`

## Inputs

Final layout source:

- GDS: `openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/gds/ntt_core_256_sram.gds`
- DEF: `openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/def/ntt_core_256_sram.def`
- Gate-level netlist: `openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/verilog/gl/ntt_core_256_sram.nl.v`

## Attempt 1: GDS / Device-Level LVS

Run tag: `RUN_2026.07.01_lvs_final_gds`

Command mode: OpenLane `flow.tcl -lvs` with final GDS and final gate-level netlist.

Result:

- Magic GDS-to-SPICE extraction completed and produced `results/signoff/ntt_core_256_sram.gds.spice`.
- Netgen started comparison but failed before producing LVS JSON or the compact `*.lvs.rpt` summary.
- Failure point from OpenLane wrapper: `child killed: segmentation violation`.
- The Netgen log stopped while processing placeholder / empty-device cells such as `sky130_fd_pr__special_nfet_01v8`, `sky130_fd_pr__nfet_01v8`, `sky130_fd_pr__pfet_01v8_hvt`, `sky130_fd_pr__diode_pw2nd_05v5`, `sky130_fd_pr__res_generic_po`, and `sky130_ef_sc_hd__decap_12`.

Artifacts saved here:

- `setup_file.gds.lvs`
- `gds_lvs_failure_tail.log`

## Attempt 2: LEF / Block-Level LVS

Run tag: `RUN_2026.07.01_lvs_final_lef`

Command mode: OpenLane interactive Tcl using the final DEF and final gate-level netlist. This uses abstract LEF/DEF extraction rather than transistor-level GDS extraction.

Result:

- Magic LEF/DEF-to-SPICE extraction completed.
- Netgen started comparison but did not produce LVS JSON or the compact `*.lvs.rpt` summary.
- ARM64 OpenLane image failed with `child killed: segmentation violation` while processing placeholder standard-cell / tap cells.
- AMD64 retry reached the same comparison area and stopped after reporting empty placeholder cells; no JSON was written.
- The last visible comparison point was around cells such as `sky130_ef_sc_hd__decap_12`, `sky130_fd_sc_hd__decap_6`, and `sky130_fd_sc_hd__tapvpwrvgnd_1`, where the extracted side had disconnected pins while the schematic placeholder side had no nets.

Artifacts saved here:

- `setup_file.lef.lvs`
- `lef_lvs_failure_tail.log`
- `run_ntt_lvs_lef.tcl`

## Conclusion

A clean final LVS pass/fail count could not be generated because Netgen did not complete for either final-run GDS LVS or final-run LEF LVS. This is a tool execution failure, not an LVS-clean result.

The most likely issue is the macro/top-level LVS setup around placeholder cells, filler/decap/tap cells, and SRAM macro black-box handling. The final committed OpenLane run intentionally had `RUN_LVS` set to `0`, so no completed final-run LVS report existed before these attempts.

For a proper completed LVS report, the next fix should make the LVS setup explicitly handle the SRAM macros and placeholder-only physical cells, then rerun Netgen until it emits JSON and `ntt_core_256_sram.lvs.rpt`.
