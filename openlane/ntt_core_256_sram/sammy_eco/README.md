# Sammy u[26] Antenna ECO

This directory contains the reproducible source for a localized ECO of the
remaining antenna violation on `butterfly_inst.u[26]` at `_5459_/A1`.

The committed ECO3 DEF is an immutable baseline. Experimental outputs belong
under `../runs/` (which is ignored by Git) until a candidate passes antenna,
Magic DRC, LVS, and parasitic/timing regression checks.

The accepted geometry under test relocates the existing
`ANTENNA__5459__A1` diode into the same row, immediately to the right of
`_5459_`. A legal access point inside the diode's continuous `DIODE` li1 pin
is connected by a short met1 stub between:

- the sink pin at `(636.870, 531.930)` microns, and
- the relocated diode pin at `(638.710, 531.930)` microns.

The stub stays on `y=531.930`, below both the
`bitrev_sram.addr[1]` and `butterfly_inst.add_inst.a[26]` met1 segments at
`y=532.270`. It crosses their vertical trunks only where those trunks are on
met2, so no conductive intersection is created.

The relocation uses an equal-width cycle among the diode (0.92 microns), a
`fill_1` cell (0.46 microns), and two 1.38-micron `decap_3` cells. `PHY_1335`
stays in its original row and keeps its `S` transform; `PHY_1334` moves into the
old diode-plus-filler interval with its original `FS` transform. This keeps both
affected placement rows completely occupied without moving any logical cell or
changing any cell transform. The new stub makes diode diffusion reachable on
the same `met1` island as `_5459_/A1`, before the existing `M1M2_PR` transition.

A rejected first experiment used a straight vertical bridge at `x=636.870`.
Although it cleared antenna and produced no Magic DRC marker, LVS showed that it
crossed the `_2136_` signal and the `VPWR` followpin rail.  The dogleg routes to
the right of both obstacles before descending to the diode branch, but the
OpenROAD antenna graph did not recognize that redundant branch as protective.

`make_sink_side_diode_eco.tcl` generates a candidate DEF and refuses to
overwrite an existing output or proceed unless it finds every expected
replacement and insertion point exactly once. `check_candidate.tcl` loads that
DEF in OpenROAD and runs the antenna check. `extract_candidate_spef.tcl` performs OpenRCX
extraction on the candidate so the electrical effect can be compared with the
committed ECO3 SPEF. `run_candidate_sta.tcl` runs nominal-corner STA with that
newly extracted SPEF.

`make_met3_min_area_eco.tcl` repairs the two undersized met3 islands reported
as four Magic markers at the bottom of the input SRAM.  On
`input_sram.wdata[3]` and `input_sram.wdata[28]`, it adds a 0.460-micron
horizontal met3 stub from the existing M3M4 via toward the met4 SRAM-pin
connection.  The via locations, routed endpoints, and connectivity remain
unchanged.

`make_lvs_reference.tcl` generates an LVS-only powered reference netlist for
the 8x1024 SRAM.  It replaces the inferred scalar `.wmask0({net})` connection
with the macro abstract's exact escaped bit-pin name, `.\wmask0[0] (net)`.
This prevents Netgen 1.5.255 from creating a synthetic disconnected proxy net;
it does not alter the synthesized logic or physical layout.  The generator
requires exactly one target SRAM instance and refuses to overwrite its input
or an existing output.  `run_lvs_model_fix.tcl` reproduces the clean Netgen
comparison for the accepted signoff package.
