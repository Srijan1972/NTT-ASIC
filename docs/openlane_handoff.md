# OpenLane handoff notes

Recommended design top for full NTT OpenLane handoff:

- `ntt_core_256_sram`

This is the SRAM-wrapper-backed version of the full 256-point NTT design. It supersedes both:

- `ntt_core_8` — earlier 8-point bring-up prototype
- `ntt_core_256` — full 256-point design using direct inferred/register-array storage

## RTL source files

Use these clean ASIC-oriented RTL files:

- `rtl/asic_sram_1rw.sv`
- `rtl/mod_add.sv`
- `rtl/mod_sub.sv`
- `rtl/modmul_montgomery.sv`
- `rtl/ntt_butterfly.sv`
- `rtl/ntt_core_256_sram.sv`

Do not use the old FPGA/HLS generated files under `hls-design/` as the OpenLane source unless deliberately comparing against the original implementation.

## SRAM macro boundary

`rtl/asic_sram_1rw.sv` is a generic 1-read/write SRAM wrapper and behavioral simulation model.

It is intended as the macro-binding boundary. For a real tapeout flow, the physical-design owner should bind or replace this wrapper with a PDK-specific SRAM macro and provide the required macro views:

- Verilog simulation model
- Liberty timing/power `.lib`
- LEF abstract
- GDS layout
- any required setup files for the selected OpenLane/PDK flow

Because no exact PDK/SRAM macro library was specified, the repository now uses a generic wrapper rather than hard-coding a Sky130/GF180/etc. macro name.

## Top-level interface

`ntt_core_256_sram` provides:

- `clk`
- `rst_n`
- `start`
- `busy`
- `done`
- load interface for 256 input data words
- load interface for 256 bit-reversal table entries
- load interface for 255 twiddle words
- readback interface for 256 output words

The core implements the HLS-style 256-point NTT schedule using synchronous SRAM-style accesses:

1. Load input, bit-reversal table, and twiddles into SRAM-wrapper memories.
2. Permute input into ping SRAM using the bit-reversal table.
3. Run 8 NTT stages.
4. Execute 128 butterflies per stage using one shared butterfly datapath.
5. Ping-pong intermediate results between SRAM-wrapper memories.
6. Expose final output through synchronous readback from the final ping/pong memory.

## Verification commands

From the project root:

```bash
bash scripts/run_ntt_core_256_sram_tb.sh
bash scripts/lint_rtl.sh
bash scripts/run_synth_ntt_core_256_sram.sh
bash scripts/check_openlane_handoff_readiness.sh
```

Latest verified readiness output:

```text
PASS: tb_ntt_core_256_sram
PASS: ntt_core_256_sram Yosys synthesizability check completed
PASS: SRAM-backed full NTT OpenLane handoff readiness checks completed
```

## Test vectors

The 256-point RTL testbench regenerates vectors from:

- `sim/ntt_golden.py`

Generated vector files live under:

- `sim/test_vectors/input_256.hex`
- `sim/test_vectors/bitrev_256.hex`
- `sim/test_vectors/twiddles_256.hex`
- `sim/test_vectors/expected_256.hex`
- `sim/test_vectors/params_256.txt`

The golden model uses:

- `N = 256`
- `Q = 8380417`
- `Q_INV = 4236238847`

## OpenLane starter files

Use:

- `constraints/ntt_core_256_sram.sdc`
- `openlane/ntt_core_256_sram/config.tcl`

The starter OpenLane config points to the SRAM-backed full 256-point top. It is not final tapeout signoff until the generic SRAM wrapper is bound to real process macros and the physical checks pass.

## Remaining physical-design work

The design can now enter OpenLane physical-flow exploration, but the OpenLane/PDK owner must still do:

- choose the exact PDK and SRAM macro library
- bind `asic_sram_1rw` to real SRAM macros or replace the wrapper with macro-specific instances
- provide SRAM macro `.lib`, `.lef`, `.gds`, and Verilog views
- run technology-mapped synthesis
- review timing, especially the Montgomery multiplier datapath and SRAM access paths
- pipeline or restructure the datapath if timing fails
- tune floorplan, utilization, IO constraints, macro placement, and clock period
- run place, CTS, route, DRC, LVS, antenna checks, STA, and signoff checks

## Correct handoff statement

Use this wording:

"Full 256-point NTT ASIC-compatible RTL with generic SRAM macro-wrapper boundary and OpenLane starter handoff package."

Do not claim:

"Final tapeout-ready GDSII."
