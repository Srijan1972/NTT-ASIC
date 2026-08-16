# CI2609 Local Integration Status

Date: 2026-08-07

This project is registered for the ChipFoundry CI2609 shuttle. All work described
here was performed locally. No Git push or shuttle submission was made.

## Completed

- Installed and initialized the ChipFoundry CLI project.
- Installed Caravel 2026.2.9, management core 2026.2.9, LibreLane 2.4.6, and
  the sky130A PDK.
- Integrated `ntt_user_macro` with six
  `sky130_sram_1kbyte_1rw1r_32x256_8` macros.
- Passed the RTL SRAM read/write and 256-word COPY smoke test.
- Completed a full macro hardening and signoff flow.
- Generated Caravel-format GDS, LEF, DEF, netlist, timing, and extraction views.
- Achieved zero routed DRC, zero KLayout merged-GDS DRC, zero disconnected pins,
  and an LVS match.

## Run Comparison

| Run | Main experiment | Routed DRC | Final antenna pins/nets | KLayout DRC | LVS | Setup WNS |
| --- | --- | ---: | ---: | ---: | --- | ---: |
| `CI2609_ntt_v2` | Fanout 8, antenna margin 25 | 0 | 109 / 106 | 0 | Pass | -3.058 ns |
| `CI2609_ntt_v3` | Timing synthesis, margin 90, diode padding 2 | Stopped | Not accepted | Not run | Not run | Not final |
| `CI2609_ntt_v4` | Timing synthesis, margin 50, diode padding 1 | 0 | 152 / 144 | 0 | Pass | -3.094 ns |
| `CI2609_ntt_v5` | Fanout 16, antenna margin 0 | 0 | 137 / 129 | Not rerun | Not rerun | Not final |

`CI2609_ntt_v2` remains the best antenna baseline. The active configuration has
been restored to its fanout and antenna settings.

## Important Findings

The OpenROAD global-route antenna repair reached zero in each completed routing
experiment, but detailed routing created a different metal topology and the final
antenna checker found violations again. Increasing the global antenna margin added
more diodes but made the final result worse:

- Margin 25 inserted 1,189 repair diodes and ended at 109 / 106.
- Margin 50 inserted 4,231 repair diodes and ended at 152 / 144.
- Margin 90 added roughly 70,000 diodes and caused an unacceptably congested
  detailed route, so the run was stopped.

The Magic abstract-layout DRC reported 3,070 copies of `nwell.4`. These are not
present in the merged transistor GDS: KLayout reports zero errors and LVS matches.
The active flow therefore uses KLayout as the primary GDS streamout and DRC tool.
Magic remains enabled for LEF and SPICE extraction, but abstract-view Magic DRC is
disabled.

## Next Work

1. Build a targeted post-route antenna repair experiment using the final violating
   pin list, diode placement near those gates, and incremental rerouting.
2. Re-run detailed routing, antenna, KLayout DRC, and LVS after each targeted batch.
3. Close the slow-corner timing paths. The worst paths are SRAM-to-register and
   register-to-SRAM paths; the 25 ns clock target currently misses setup and hold
   in the slow corners.
4. Configure GPIO and integrate the accepted hardened macro into
   `user_project_wrapper` only after the macro antenna and timing checks are clean.
5. Harden and sign off the full Caravel wrapper before running ChipFoundry
   precheck or submission commands.

## Baseline Artifacts

The best complete baseline is under:

`openlane/ntt_user_macro/runs/CI2609_ntt_v2`

The latest complete comparison run is under:

`openlane/ntt_user_macro/runs/CI2609_ntt_v4`
