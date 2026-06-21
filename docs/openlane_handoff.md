# OpenLane handoff notes

Recommended design top for full NTT OpenLane handoff:

- `ntt_core_256`

This replaces the earlier `ntt_core_8` prototype as the main handoff top. The 8-point files remain useful as bring-up references, but they are not the final target.

## RTL source files

Use these clean ASIC-oriented RTL files:

- `rtl/mod_add.sv`
- `rtl/mod_sub.sv`
- `rtl/modmul_montgomery.sv`
- `rtl/ntt_butterfly.sv`
- `rtl/ntt_core_256.sv`

Do not use the old FPGA/HLS generated files under `hls-design/` as the OpenLane source unless deliberately comparing against the original implementation.

## Top-level interface

`ntt_core_256` provides:

- `clk`
- `rst_n`
- `start`
- `busy`
- `done`
- load interface for 256 input data words
- load interface for 256 bit-reversal table entries
- load interface for 255 twiddle words
- readback interface for 256 output words

The core implements the HLS-style 256-point NTT schedule:

1. Load input, bit-reversal table, and twiddles.
2. Permute input into local ping buffer using the bit-reversal table.
3. Run 8 NTT stages.
4. Execute 128 butterflies per stage using one shared butterfly datapath.
5. Ping-pong intermediate results between internal buffers.
6. Expose final output through `read_addr`/`read_data`.

## Verification commands

From the project root:

```bash
bash scripts/run_ntt_core_256_tb.sh
bash scripts/lint_rtl.sh
bash scripts/run_synth_ntt_core_256.sh
bash scripts/check_openlane_handoff_readiness.sh
```

Latest verified readiness output:

```text
PASS: tb_ntt_core_256
PASS: ntt_core_256 Yosys synthesizability check completed
PASS: Full NTT OpenLane handoff readiness checks completed
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

- `constraints/ntt_core_256.sdc`
- `openlane/ntt_core_256/config.tcl`

The starter OpenLane config points to the full 256-point top. It is not final tapeout signoff.

## SRAM and memory status

The clean RTL does not instantiate FPGA BRAM primitives such as `RAMB18E1`, `RAMB36E1`, `xpm_memory_*`, or Vivado block-memory IP.

Current storage is modeled with inferred/register-array RTL for clean functional handoff. This is ASIC-compatible for RTL bring-up and OpenLane exploration, but a real tapeout flow should review the memory architecture and replace or wrap memories with process-specific SRAM macros when appropriate.

## Remaining physical-design work

The design can now enter OpenLane physical-flow exploration, but the OpenLane/PDK owner must still do:

- choose the exact PDK and standard-cell libraries
- run technology-mapped synthesis
- review timing, especially the Montgomery multiplier datapath
- pipeline or restructure the datapath if timing fails
- decide SRAM macro strategy and placement
- tune floorplan, utilization, IO constraints, and clock period
- run place, CTS, route, DRC, LVS, antenna checks, STA, and signoff checks

## Correct handoff statement

Use this wording:

"Full 256-point NTT ASIC-compatible RTL and OpenLane starter handoff package."

Do not claim:

"Final tapeout-ready GDSII."
