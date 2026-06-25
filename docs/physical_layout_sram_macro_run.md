# SRAM Macro Physical Layout Run

This note records the current Sky130/OpenLane physical-layout setup for
`ntt_core_256_sram`.

## Final completed run

- Design: `ntt_core_256_sram`
- Run tag: `RUN_2026.06.25_sram_macro_antenna_fix`
- PDK: `sky130A`
- Standard-cell library: `sky130_fd_sc_hd`
- Flow status: completed
- Final local GDS path:
  `openlane/ntt_core_256_sram/runs/RUN_2026.06.25_sram_macro_antenna_fix/results/final/gds/ntt_core_256_sram.gds`

The full OpenLane run directory is intentionally not tracked in git because it
is generated data and is several gigabytes.

## SRAM macro binding

The OpenLane config now binds the generic `asic_sram_1rw` wrapper to Sky130
OpenRAM hard macros:

- 4 instances of `sky130_sram_1kbyte_1rw1r_32x256_8`
- 1 instance of `sky130_sram_1kbyte_1rw1r_8x1024_8`

The physical macro views are loaded from the installed Sky130 PDK:

- SRAM LEF through `EXTRA_LEFS`
- SRAM GDS through `EXTRA_GDS_FILES`
- SRAM Liberty through `EXTRA_LIBS`
- local blackbox Verilog stubs through `VERILOG_FILES_BLACKBOX`

Manual macro placement and PDN hooks are provided in:

- `openlane/ntt_core_256_sram/macro_placement.cfg`
- `openlane/ntt_core_256_sram/config.tcl`

## Final run status

The completed run has:

- TritonRoute detailed-route violations: `0`
- Abstract Magic DRC violations: `0`
- Setup/hold timing: clean at the typical corner
- Remaining antenna violations: `20`
- Remaining max slew violations: `218`
- Remaining max fanout violations: `107`

`MAGIC_DRC_USE_GDS` is set to `0` because Sky130 OpenRAM SRAM GDS triggers a
large number of known SRAM-internal Magic DRC false positives. This is the
workaround recommended by the OpenLane OpenRAM guide for SRAM macro designs.

`RUN_KLAYOUT_XOR` is disabled because the SRAM-macro GDS comparison was killed
by memory pressure on this machine. `RUN_LVS` is disabled in the completed run;
an earlier LVS-enabled run reached GDS generation but reported a small
one-unmatched-net LVS mismatch.

## Remaining physical-design work

- Resolve the remaining `20` antenna violations.
- Reduce max slew and max fanout violations.
- Re-enable and debug LVS until the one-net mismatch is clean.
- Re-enable KLayout XOR on a machine with enough memory, or run an equivalent
  layout comparison flow.
