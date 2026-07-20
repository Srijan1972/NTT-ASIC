# RUN_2026.07.19_physical_antenna_only_v2

Final artifact package for the best antenna-optimized Physical_Layout run so far.

## Source

- Design: `ntt_core_256_sram`
- Branch: `Physical_Layout`
- Source run: `openlane/ntt_core_256_sram/runs/RUN_2026.07.19_physical_antenna_only_v2`
- Baseline improved from: `RUN_2026.06.25_sram_macro_antenna_fix`

## Included Files

- `ntt_core_256_sram.gds` - final GDS
- `ntt_core_256_sram.def` - final DEF
- `ntt_core_256_sram.lef` - final LEF
- `ntt_core_256_sram.nl.v` - gate-level netlist
- `metrics.csv` - OpenLane metrics
- `drc.rpt` - Magic DRC report
- `39-antenna_violators.rpt` - remaining antenna violators
- `39-antenna_violators_pins.txt` - remaining antenna violator pins
- `34-rcx_sta.checks.rpt` - timing checks
- `34-rcx_sta.summary.rpt` - timing summary
- `35-irdrop-VGND.rpt` and `35-irdrop-VPWR.rpt` - IR drop reports
- `manufacturability.rpt` - manufacturability summary
- `SHA256SUMS.txt` - file checksums

## Result Summary

- Flow status: completed
- Detailed route DRC violations: 0
- Magic DRC violations: 0
- Pin antenna violations: 7
- Net antenna violations: 7
- SPEF WNS/TNS: 0.0 / 0.0
- LVS: skipped in this run (`RUN_LVS = 0`)

## Config Delta From June 25 Baseline

The run kept the June 25 placement density and applied antenna-only repair changes:

```tcl
set ::env(DIODE_INSERTION_STRATEGY) 3
set ::env(GRT_MAX_DIODE_INS_ITERS) 10
set ::env(GRT_ANT_MARGIN) 90
set ::env(RUN_HEURISTIC_DIODE_INSERTION) 1
set ::env(HEURISTIC_ANTENNA_THRESHOLD) 250
```

## Notes

This run improves antenna from the June 25 baseline `20/20` to `7/7` while keeping detailed-route DRC and Magic DRC clean. The next signoff step should be LVS with power pins/macro views enabled.
