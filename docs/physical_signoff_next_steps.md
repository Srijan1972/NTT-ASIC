# Physical signoff next steps for `ntt_core_256_sram`

## Current state

The latest `Physical_Layout` branch contains a final SRAM-macro GDS artifact and LVS debug artifacts, but it is not signoff-clean yet.

Observed from `openlane/ntt_core_256_sram/final/metrics.csv` and `openlane/ntt_core_256_sram/final/lvs/lvs_status_report.md`:

- OpenLane flow completed for run `RUN_2026.06.25_sram_macro_antenna_fix`.
- Final GDS exists at `openlane/ntt_core_256_sram/final/ntt_core_256_sram.gds`.
- Routed violations reported in metrics are zero.
- Magic DRC violations reported in metrics are zero.
- Antenna remains non-clean: 20 pin antenna violations and 20 net antenna violations.
- Timing is not clean: WNS is about `-2.12 ns`.
- LVS did not complete: `lvs_total_errors = -1` and Netgen failed before writing JSON or a compact `*.lvs.rpt`.
- KLayout XOR is not clean/proven because it was disabled or blocked by memory pressure.

## Step-by-step plan

1. Preserve the latest final GDS and LVS artifacts.
   - Keep `openlane/ntt_core_256_sram/final/ntt_core_256_sram.gds`.
   - Keep the LVS attempt logs under `openlane/ntt_core_256_sram/final/lvs/`.

2. Fix repository-side LVS setup before the next physical run.
   - Keep SRAM macro power pins explicit with `USE_POWER_PINS`.
   - Keep `RUN_LVS = 1` so OpenLane actually attempts LVS.
   - Keep KLayout XOR disabled for now if the machine is memory-limited.
   - Preserve the new LVS report if LVS still fails.

3. Reduce pressure on routing/timing/antenna cleanup.
   - Lower core utilization and placement density.
   - Lower max fanout.
   - Enable buffering/sizing/resizer optimizations.
   - Enable stronger diode insertion.

4. Rerun OpenLane for `ntt_core_256_sram`.
   - The next run should produce a real signoff directory and ideally an LVS report.
   - If Netgen crashes again, keep the full run directory, especially logs and extracted SPICE.

5. Inspect the new run artifacts.
   - Check antenna report.
   - Check timing reports for WNS/TNS and slew/fanout.
   - Check LVS report or Netgen log.
   - Do not claim signoff closure until DRC, LVS, antenna, STA, and XOR are all accounted for.

## Repository-side changes applied

Updated `openlane/ntt_core_256_sram/config.tcl`:

- Added `VERILOG_POWER_DEFINE USE_POWER_PINS`.
- Set `LVS_INSERT_POWER_PINS` to `1`.
- Lowered `FP_CORE_UTIL` from `25` to `20`.
- Lowered `PL_TARGET_DENSITY` from `0.45` to `0.35`.
- Added conservative cleanup knobs:
  - `SYNTH_MAX_FANOUT = 8`
  - `SYNTH_BUFFERING = 1`
  - `SYNTH_SIZING = 1`
  - `DIODE_INSERTION_STRATEGY = 3`
  - `GLB_RESIZER_TIMING_OPTIMIZATIONS = 1`
  - `PL_RESIZER_TIMING_OPTIMIZATIONS = 1`

Updated `openlane/ntt_core_256_sram/final/lvs/run_ntt_lvs_lef.tcl`:

- Added `VERILOG_POWER_DEFINE USE_POWER_PINS`.
- Changed `LVS_INSERT_POWER_PINS` from `0` to `1`.
- Normalized line endings.

## Verification performed after repository-side changes

- `bash scripts/run_ntt_core_256_sram_tb.sh` passed.
- `bash scripts/lint_rtl.sh` passed.
- Macro-bound lint with `-DUSE_POWER_PINS` passed.

## Next command for the OpenLane owner

From inside the OpenLane environment, rerun the SRAM-backed design with the updated config:

```bash
flow.tcl -design /work/openlane/ntt_core_256_sram -tag RUN_$(date +%Y.%m.%d_%H.%M.%S)_sram_lvs_retry -overwrite
```

After the run, copy or preserve the new run directory and inspect it with:

```bash
bash scripts/inspect_physical_reports.sh openlane/ntt_core_256_sram/runs/<NEW_RUN_TAG>
bash scripts/inspect_lvs_report.sh openlane/ntt_core_256_sram/runs/<NEW_RUN_TAG>/reports/signoff/*.lvs.rpt
```

If no `*.lvs.rpt` is produced again, preserve the Netgen log and extracted SPICE from the run. That becomes the next concrete debug target.
