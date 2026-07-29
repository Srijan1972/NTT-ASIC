# NTT SRAM Macro ECO3 Signoff Package

This folder contains the best verified result from the July 29 antenna
optimization experiments and its fresh OpenLane signoff artifacts.

## Source

- Routing candidate: `RUN_2026.07.29_physical_v2_targeted_eco3`
- Signoff run: `RUN_2026.07.29_physical_v2_targeted_eco3_signoff`
- PDK: `sky130A`
- OpenLane image: `ff5509f65b17bfa4068d5336495ab1718987ff69`
- Clock period: `10.000 ns`

The LEF is inherited from `RUN_2026.07.19_physical_antenna_only_v2`.
The ECO changes internal diode placement and routing but do not change the
top-level boundary or pin abstract.

## Signoff Results

- Setup WNS/TNS: `0.00 ns / 0.00 ns`
- Worst setup slack: `2.89 ns`
- Worst hold slack: `0.22 ns`
- OpenROAD detailed-route DRC: `0`
- OpenROAD antenna: `1 pin / 1 net`
- Magic DRC: `4` met3 minimum-area markers
- LVS: `2` total errors from one unmatched SRAM-interface net
- GDS size: `60,973,986` bytes

## Remaining Issues

The remaining antenna violation is:

- Net: `butterfly_inst.u[26]`
- Pin: `_5459_/A1`
- Layer: `met1`
- Partial/required ratio: `1299.67 / 400.00`

Magic reports four `met3.6` minimum-area markers. LVS reports one net-count
difference around `net472` and the SRAM `wmask0` connection versus extracted
`dummy_5529`.

This package is the best antenna result from this optimization sequence, but
it is not tapeout-clean.

## Files

- `ntt_core_256_sram.gds`: final GDS with SRAM macro geometry
- `ntt_core_256_sram.def`: routed DEF
- `ntt_core_256_sram.lef`: top-level abstract LEF
- `ntt_core_256_sram.nl.v`: unpowered gate-level netlist
- `ntt_core_256_sram.pnl.v`: powered gate-level netlist
- `ntt_core_256_sram.spice`: Magic-extracted LVS layout netlist
- `ntt_core_256_sram.sdc`: timing constraints
- `ntt_core_256_sram.spef`: nominal extracted parasitics
- `ntt_core_256_sram.sdf`: nominal delay annotation
- `ntt_core_256_sram.lib`: generated timing library
- `metrics.csv`: concise signoff metrics
- `rcx_sta.summary.rpt`: timing slack summary
- `rcx_sta.checks.rpt`: complete timing and electrical checks
- `antenna_violators.rpt`: antenna report
- `magic_drc.rpt`, `magic_drc.tr`: Magic DRC reports
- `openroad_detailed.drc`: OpenROAD detailed-routing DRC report
- `lvs.rpt`: LVS summary
- `SHA256SUMS.txt`: package checksums
