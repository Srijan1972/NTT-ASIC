# ASIC-compatible RTL handoff summary

## Status

The ASIC-compatible RTL conversion milestone is complete for an initial OpenLane handoff.

Recommended handoff top:

- `ntt_core_8`

This is a small accelerator-style 8-point NTT core with a clock, reset, start/done control, load ports, readback port, internal data/twiddle storage, and the verified NTT datapath.

## What the original FPGA/HLS side contained

The original project contained Vitis/Vivado/HLS-generated artifacts and FPGA-oriented implementation files. Those files are useful as reference material, but they are not the recommended ASIC handoff path.

The clean ASIC handoff path is the hand-written RTL under:

- `rtl/`

The OpenLane owner should not use the generated FPGA/HLS implementation files under `hls-design/` as the ASIC source unless they are deliberately comparing against the old implementation.

## Clean ASIC-oriented RTL created

Arithmetic/datapath RTL:

- `rtl/mod_add.sv`
- `rtl/mod_sub.sv`
- `rtl/modmul_montgomery.sv`
- `rtl/ntt_butterfly.sv`
- `rtl/ntt_stage_2.sv`
- `rtl/ntt_stage_4.sv`
- `rtl/ntt_stage_8.sv`

Memory/control/core RTL:

- `rtl/simple_dual_port_ram.sv`
- `rtl/ntt_core_8.sv`

OpenLane bridge/starter alternative:

- `rtl/ntt_stage_8_registered.sv`

Use `ntt_core_8` for the stronger handoff. Use `ntt_stage_8_registered` only if a simpler registered datapath slice is desired.

## Verification completed

The following user-verified or readiness-script-verified checks passed:

- unit tests for earlier arithmetic/stage blocks
- `ntt_stage_8` testbench
- `ntt_core_8` testbench
- Verilator lint for `ntt_core_8`
- Yosys synthesizability check for `ntt_core_8`
- OpenLane handoff readiness script

Latest readiness output:

```text
PASS: tb_ntt_core_8
PASS: ntt_core_8 Yosys synthesizability check completed
PASS: OpenLane handoff readiness checks completed
```

## Handoff support files

Simulation/test:

- `sim/tb_ntt_core_8.sv`
- `scripts/run_ntt_core_8_tb.sh`

Lint/synthesis checks:

- `scripts/lint_rtl.sh`
- `scripts/synth_ntt_core_8_yosys.tcl`
- `scripts/run_synth_ntt_core_8.sh`
- `scripts/check_openlane_handoff_readiness.sh`

OpenLane starter files:

- `constraints/ntt_core_8.sdc`
- `openlane/ntt_core_8/config.tcl`
- `docs/openlane_handoff.md`

## What remains before real ASIC physical design

The handoff package is ready for initial OpenLane physical-flow exploration, but it is not production/tapeout complete.

Remaining work for the OpenLane/PDK owner:

1. Choose the exact OpenLane version and PDK.
2. Run technology-mapped synthesis with the selected standard-cell library.
3. Inspect timing, especially around the Montgomery multiplier.
4. Pipeline the datapath/multiplier if timing requires it.
5. Decide the final target NTT size and interface.
6. Replace or wrap inferred/register-array memories with process-specific SRAM macros for realistic larger designs.
7. Add final timing constraints, IO constraints, floorplan, placement, CTS, routing, DRC/LVS, and signoff checks.

## SRAM/BRAM status

The clean handoff RTL does not instantiate known FPGA BRAM primitives such as:

- `RAMB18E1`
- `RAMB36E1`
- `xpm_memory_*`
- Vivado block-memory IP

Current tiny memories in `ntt_core_8` are inferred/register-array storage. This is acceptable for initial ASIC-compatible RTL bring-up and small OpenLane exploration.

For a realistic full-size accelerator, SRAM macro wrappers should be introduced after the PDK/memory compiler is chosen.

## Handoff statement

This project is ready to hand off as clean ASIC-oriented RTL for initial OpenLane work using `ntt_core_8` as the top module.

It should be described as:

"Clean ASIC-compatible RTL and OpenLane starter handoff package for a small 8-point NTT accelerator-style core."

It should not be described as:

"Final production ASIC layout" or "tapeout-ready design."
