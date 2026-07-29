# NTT ASIC Improvement History

This folder contains a short report about the antenna optimization work for
`ntt_core_256_sram`.

The report explains how the measured antenna result improved from:

- 34 net violations / 35 pin violations on July 8
- 7 net violations / 7 pin violations on July 19
- 1 net violation / 1 pin violation on July 29

The main steps were stronger automatic diode insertion followed by three small,
report-driven ECO rounds near the remaining sink pins.

The main OpenLane settings used for the large improvement were:

- `DIODE_INSERTION_STRATEGY = 3`
- `GRT_ANT_MARGIN = 90`
- `GRT_MAX_DIODE_INS_ITERS = 10`
- `RUN_HEURISTIC_DIODE_INSERTION = 1`
- `HEURISTIC_ANTENNA_THRESHOLD = 250`
- `FP_CORE_UTIL = 25`
- `PL_TARGET_DENSITY = 0.45`

The current best source run is:

`RUN_2026.07.29_physical_v2_targeted_eco3`

The design is improved but not yet tapeout-clean. One antenna violation remains
at `butterfly_inst.u[26]`, and the latest signoff also reports four Magic DRC
markers and two LVS errors.

Files:

- `NTT_ASIC_Improvement_History.docx`: readable project history and current status
- `README.md`: this short folder summary
