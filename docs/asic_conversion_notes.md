# NTT-ASIC ASIC Conversion Notes

This document tracks the work and decisions from the ASIC conversion session. It is intended to become the source material for a final PDF summary at the end of the project.

## Project location

Repository path:

`/mnt/c/Users/sammy/Desktop/NTT-ASIC`

Git remote:

`https://github.com/Srijan1972/NTT-ASIC.git`

Current ASIC working branch:

`asic-conversion`

The branch was created from:

`origin/hls-design`

## Repository understanding

The repository has three meaningful branches:

- `main`: placeholder branch containing only `README.md`.
- `origin/hls-design`: Vitis HLS hardware-design branch containing the C++ NTT kernel, HLS project files, generated Verilog/VHDL, and synthesis reports.
- `origin/kv260-driver`: KV260/PYNQ deployment branch containing Vivado design files, bitstream, hardware handoff file, packaged IP, and Python driver.

The current project is not yet an ASIC project. It is an FPGA/HLS accelerator project. The actual useful source for ASIC conversion is the algorithm and structure in:

- `hls-design/ntt-kernel.cpp`
- `hls-design/ntt-kernel.h`
- `hls-design/ntt-test.cpp`

The FPGA deployment files such as `.bit`, `.hwh`, Vivado block designs, PYNQ drivers, AXI wrappers, and Vitis-generated project files are useful references but should not be treated as final ASIC source.

## What the design does

The design implements a hardware accelerator for the Number Theoretic Transform (NTT), likely for lattice-cryptography polynomial arithmetic.

The HLS kernel is named:

`ntt_kernel`

It accepts:

- input/output coefficient buffer `x`
- bit-reversal / permutation table, named `psi_powers` in the HLS interface
- precomputed twiddle factors
- modulus `q`
- Montgomery-reduction helper `q_inv`
- `batch_size`
- transform length `n`

The HLS implementation uses:

- modular addition
- modular subtraction
- Montgomery-style modular multiplication
- bit-reversal permutation
- Cooley-Tukey butterfly stages
- ping-pong local buffers
- AXI master interfaces for global memory
- AXI-Lite control registers
- Vitis HLS pragmas for FPGA-oriented synthesis

## ASIC conversion strategy

The final ASIC direction is to write clean synthesizable SystemVerilog RTL rather than directly relying on Vitis-generated RTL.

The generated HLS Verilog may be used as a reference, but the clean ASIC implementation should remove FPGA/HLS-specific dependencies:

- no `#pragma HLS`
- no `hls_vector.h`
- no Vitis-generated AXI assumptions inside the core
- no FPGA BRAM/DSP primitive dependence
- no PYNQ/Vivado/bitstream dependency

The first target is intentionally small and verifiable:

- fixed `n = 256`
- fixed `q = 8380417`
- `batch_size = 1`
- one butterfly datapath initially
- simple inferred memories/register arrays initially
- later replace memories with ASIC SRAM wrappers

## ASIC folder structure

Created clean folders:

- `rtl/` — new synthesizable SystemVerilog RTL
- `sim/` — testbenches, golden model, test vectors
- `scripts/` — simulation/synthesis scripts
- `constraints/` — timing constraints
- `docs/` — notes and final documentation source

## Golden model and test vectors

Created:

- `sim/ntt_golden.py`
- `sim/test_ntt_golden.py`
- `sim/test_vectors/input_256.hex`
- `sim/test_vectors/bitrev_256.hex`
- `sim/test_vectors/twiddles_256.hex`
- `sim/test_vectors/expected_256.hex`
- `sim/test_vectors/params_256.txt`

The golden model mirrors the HLS-style algorithm closely enough to generate RTL test vectors.

Generated vector parameters:

- `n = 256`
- `q = 8380417`
- `psi = 1921994`
- `q_inv = 4236238847`

Expected vector file lengths:

- `input_256.hex`: 256 lines
- `bitrev_256.hex`: 256 lines
- `twiddles_256.hex`: 255 lines
- `expected_256.hex`: 256 lines

Each `.hex` line is one 32-bit value represented as 8 hexadecimal digits.

The Python unit tests passed:

`python3 -m unittest test_ntt_golden.py -v`

Result:

`4 tests passed`

## Simulator setup

The selected lightweight Verilog simulator is Icarus Verilog:

Package: `iverilog`

Approximate size:

- download size: about 2.1 MB
- installed package size: about 6.6 MB
- realistic total after dependencies/cache: about 10–20 MB

The user initially saw `sudo apt update` fail because they were likely in Windows PowerShell/CMD instead of WSL. Inside WSL, `sudo`, `apt`, and `apt-get` are available.

Correct environment:

WSL2 Linux under `/mnt/c/Users/sammy/Desktop/NTT-ASIC`

## First RTL block: modular addition

Created:

- `rtl/mod_add.sv`
- `sim/tb_mod_add.sv`
- `scripts/run_mod_add_tb.sh`

`mod_add.sv` computes:

`result = (a + b) mod Q`

Default parameter:

`Q = 8380417`

The testbench checks:

- `1 + 2 = 3`
- `8380416 + 1 = 0`
- `8380416 + 2 = 1`
- `1234567 + 7654321 = 508471`

A testbench expected value was initially wrong (`507471`). The correct value is:

`1234567 + 7654321 = 8888888`

`8888888 - 8380417 = 508471`

After fixing the expected value and simplifying the RTL to avoid an Icarus Verilog warning, the test command passed:

`./scripts/run_mod_add_tb.sh`

Result:

`PASS: tb_mod_add`

## Second RTL block: modular subtraction

Created:

- `rtl/mod_sub.sv`
- `sim/tb_mod_sub.sv`
- `scripts/run_mod_sub_tb.sh`

`mod_sub.sv` computes:

`result = (a - b) mod Q`

Default parameter:

`Q = 8380417`

Implemented logic:

```systemverilog
assign result = (a < b) ? (a + Q - b) : (a - b);
```

The testbench checks:

- `5 - 3 = 2`
- `1234567 - 1234567 = 0`
- `0 - 1 = 8380416`
- `2 - 5 = 8380414`
- `1234567 - 7654321 = 1960663`

The test command is:

`./scripts/run_mod_sub_tb.sh`

Verified by user from WSL:

```text
PASS: tb_mod_sub
```

## Current next step

Next RTL block to build:

`rtl/modmul_montgomery.sv`

The test was created first and the user confirmed the expected missing-RTL failure:

```text
rtl/modmul_montgomery.sv: No such file or directory
sim/tb_modmul_montgomery.sv:13: error: Unknown module type: modmul_montgomery
```

Then `rtl/modmul_montgomery.sv` was created using the HLS Montgomery formula:

```systemverilog
ab = a * b;
ab_low = ab[31:0];
m = ab_low * Q_INV;
mq = m * Q;
sum = ab + mq;
t = sum[63:32];
result = (t >= Q) ? (t - Q) : t;
```

The testbench expected values were corrected to match this Montgomery-domain formula with:

- `Q = 8380417`
- `Q_INV = 4236238847`

Current next step: run `./scripts/run_modmul_montgomery_tb.sh` and expect `PASS: tb_modmul_montgomery`.

Verified by user from WSL:

```text
PASS: tb_modmul_montgomery
```

## Current next step

Next RTL block to build:

`rtl/ntt_butterfly.sv`

It should instantiate the verified arithmetic blocks:

- `modmul_montgomery`
- `mod_add`
- `mod_sub`

The butterfly computes:

```text
t = montgomery_mul(v, twiddle)
out_a = mod_add(u, t)
out_b = mod_sub(u, t)
```

Test-first files created:

- `sim/tb_ntt_butterfly.sv`
- `scripts/run_ntt_butterfly_tb.sh`

The testbench checks representative butterfly cases using the already verified Montgomery multiplier, modular add, and modular subtract behavior.

The test-first run produced the expected missing-RTL failure:

```text
rtl/ntt_butterfly.sv: No such file or directory
sim/tb_ntt_butterfly.sv:17: error: Unknown module type: ntt_butterfly
```

Then `rtl/ntt_butterfly.sv` was created. It instantiates:

- `modmul_montgomery`
- `mod_add`
- `mod_sub`

Current next step: run `./scripts/run_ntt_butterfly_tb.sh` and expect `PASS: tb_ntt_butterfly`.

Verified by user from WSL:

```text
PASS: tb_ntt_butterfly
```

## Current next step

Next block to build:

`rtl/simple_dual_port_ram.sv`

This will provide a small inferred memory block for later NTT stages. Start simple for correctness before optimizing for ASIC SRAM banking or read latency.

Test-first files created:

- `sim/tb_simple_dual_port_ram.sv`
- `scripts/run_simple_dual_port_ram_tb.sh`

The testbench checks simple writes, reads, and overwriting one address in a 16-entry, 32-bit-wide RAM.

The next implementation file was created:

- `rtl/simple_dual_port_ram.sv`

It is a simple inferred synchronous RAM with:

- one write port
- one read port
- parameterized data width
- parameterized address width

Current next step: run `./scripts/run_simple_dual_port_ram_tb.sh` and expect `PASS: tb_simple_dual_port_ram`.

Verified by user from WSL:

```text
PASS: tb_simple_dual_port_ram
```

## Current next step

Next functional step:

Create and test a tiny NTT stage before building the full controller.

Test-first files created:

- `sim/tb_ntt_stage_2.sv`
- `scripts/run_ntt_stage_2_tb.sh`

This stage will use one verified butterfly to process two inputs:

```text
out0, out1 = butterfly(in0, in1, twiddle)
```

This is the smallest useful NTT datapath stage and avoids jumping straight into the full controller.

The test-first run produced the expected missing-RTL failure:

```text
rtl/ntt_stage_2.sv: No such file or directory
sim/tb_ntt_stage_2.sv:17: error: Unknown module type: ntt_stage_2
```

Then `rtl/ntt_stage_2.sv` was created. It wraps one verified `ntt_butterfly` instance:

```text
out0, out1 = butterfly(in0, in1, twiddle)
```

Current next step: run `./scripts/run_ntt_stage_2_tb.sh` and expect `PASS: tb_ntt_stage_2`.

Verified by user from WSL:

```text
PASS: tb_ntt_stage_2
```

## Current next step

Next functional step:

Create and test a tiny 4-point NTT datapath block before building the controller.

Test-first files created:

- `sim/tb_ntt_stage_4.sv`
- `scripts/run_ntt_stage_4_tb.sh`

The 4-point block will use two 2-point/butterfly-style operations so we can verify composition before moving to a full NTT controller.

The test-first run produced the expected missing-RTL failure:

```text
rtl/ntt_stage_4.sv: No such file or directory
sim/tb_ntt_stage_4.sv:22: error: Unknown module type: ntt_stage_4
```

Then `rtl/ntt_stage_4.sv` was created. It instantiates two verified `ntt_stage_2` blocks:

```text
out0, out1 = stage_2(in0, in1, twiddle0)
out2, out3 = stage_2(in2, in3, twiddle1)
```

Current next step: run `./scripts/run_ntt_stage_4_tb.sh` and expect `PASS: tb_ntt_stage_4`.

Verified by user from WSL:

```text
PASS: tb_ntt_stage_4
```

## Current next step

Before building a larger controller, run a lint check on the clean RTL created so far.

Created lint script:

- `scripts/lint_rtl.sh`

It runs Verilator on the current RTL files and catches syntax/synthesizability issues early.

The first lint attempt showed that the installed Verilator is older:

```text
Verilator 4.038 2020-07-11
%Error: Invalid option: --timing
```

The lint script was updated to remove the unsupported `--timing` option.

The next lint run produced warnings that Verilator treats as fatal:

```text
%Warning-MULTITOP: Multiple top level modules
%Warning-UNUSED: Bits of signal are not used
%Error: Exiting due to 5 warning(s)
```

Fixes applied:

- updated `scripts/lint_rtl.sh` to lint explicit top modules
- simplified `rtl/mod_add.sv` to avoid an unused carry bit in `reduced_sum`
- simplified `rtl/mod_sub.sv` to avoid unused bit 32 in diff wires
- simplified `rtl/modmul_montgomery.sv` to avoid storing unused lower bits of `sum`

Current next step: rerun the unit tests touched by these cleanup edits, then rerun lint:

```bash
./scripts/run_mod_add_tb.sh && ./scripts/run_mod_sub_tb.sh && ./scripts/run_modmul_montgomery_tb.sh && ./scripts/run_ntt_butterfly_tb.sh && ./scripts/run_ntt_stage_2_tb.sh && ./scripts/run_ntt_stage_4_tb.sh && ./scripts/lint_rtl.sh
```

The next lint run found a WIDTH warning in `rtl/modmul_montgomery.sv`:

```text
%Warning-WIDTH: Operator ASSIGN expects 32 bits ... SHIFTR generates 64 bits
```

Fix applied:

- restored an explicit 64-bit `sum = ab + mq`
- assigned `t = sum[63:32]`
- wrapped the intentionally unused lower half of `sum` with Verilator `UNUSED` lint comments

Current next step: rerun the same combined test/lint command.

The user reran `./scripts/lint_rtl.sh` and it returned silently:

```text
(base) sammy@LAPTOP-10:/mnt/c/Users/sammy/Desktop/NTT-ASIC$ ./scripts/lint_rtl.sh
(base) sammy@LAPTOP-10:/mnt/c/Users/sammy/Desktop/NTT-ASIC$
```

This indicates the current RTL lint check passed with Verilator.

## Current next step

Run the full unit-test chain once after lint cleanup changed arithmetic internals:

```bash
./scripts/run_mod_add_tb.sh && ./scripts/run_mod_sub_tb.sh && ./scripts/run_modmul_montgomery_tb.sh && ./scripts/run_ntt_butterfly_tb.sh && ./scripts/run_ntt_stage_2_tb.sh && ./scripts/run_ntt_stage_4_tb.sh
```

Expected result: all scripts print `PASS: ...`.

Verified by user from WSL:

```text
everything passed
```

## Current next step

Next ASIC-flow check:

Create a basic Yosys synthesis/synthesizability script for the largest current clean top:

- top module: `ntt_stage_4`
- script: `scripts/synth_ntt_stage_4_yosys.tcl`
- runner: `scripts/run_synth_ntt_stage_4.sh`

This checks that the current RTL can be elaborated and optimized by a synthesis tool, not just simulated/linted.

Verified by user from WSL:

```text
PASS: ntt_stage_4 Yosys synthesizability check completed
```

This confirms the current `ntt_stage_4` RTL hierarchy can be elaborated and optimized by Yosys with 0 reported check problems.

## Current next step

Next RTL block to build/test:

- `rtl/ntt_stage_8.sv`
- `sim/tb_ntt_stage_8.sv`
- `scripts/run_ntt_stage_8_tb.sh`

This extends the same compositional pattern from one 2-point butterfly stage to 4-wide and then 8-wide combinational stage wrappers before adding a full controller.

Verified by user from WSL:

```text
PASS: tb_ntt_stage_8
```

## Current next step

Run Verilator lint again after adding `ntt_stage_8`. The lint script has been updated so the current top module is now `ntt_stage_8`.

Verified by user from WSL:

```text
lint passed
```

## Current next step

Create and run a Yosys synthesizability check for the largest current clean top:

- top module: `ntt_stage_8`
- script: `scripts/synth_ntt_stage_8_yosys.tcl`
- runner: `scripts/run_synth_ntt_stage_8.sh`

Verified locally:

```text
PASS: ntt_stage_8 Yosys synthesizability check completed
```

## OpenLane handoff preparation

The project is being prepared for handoff to another engineer who will run OpenLane physical implementation.

A clocked OpenLane handoff top was added because the previous `ntt_stage_8` top was purely combinational:

- `rtl/ntt_stage_8_registered.sv`
- top module: `ntt_stage_8_registered`
- ports include `clk` and active-low `rst_n`
- outputs are registered

Added handoff support files:

- `sim/tb_ntt_stage_8_registered.sv`
- `scripts/run_ntt_stage_8_registered_tb.sh`
- `scripts/synth_ntt_stage_8_registered_yosys.tcl`
- `scripts/run_synth_ntt_stage_8_registered.sh`
- `constraints/ntt_stage_8_registered.sdc`
- `openlane/ntt_stage_8_registered/config.tcl`
- `docs/openlane_handoff.md`
- `scripts/check_openlane_handoff_readiness.sh`

Verified locally:

```text
PASS: tb_ntt_stage_8_registered
scripts/lint_rtl.sh passed silently
PASS: ntt_stage_8_registered Yosys synthesizability check completed
PASS: OpenLane handoff readiness checks completed
```

Handoff boundary:

- This is ready as an initial OpenLane handoff package.
- It is not a production-complete ASIC implementation.
- No process-specific SRAM macro replacement has been done yet.
- The OpenLane owner should choose the exact PDK/OpenLane version, run synthesis first, inspect timing, and pipeline or SRAM-wrap as needed.

## Fuller accelerator RTL path

The user decided it would be more useful to hand off a small accelerator-style core rather than only the registered datapath wrapper.

Created first memory/controller-style core:

- `rtl/ntt_core_8.sv`
- `sim/tb_ntt_core_8.sv`
- `scripts/run_ntt_core_8_tb.sh`

This core adds:

- `clk`
- `rst_n`
- `start`
- `busy`
- `done`
- load ports for 8 data words
- load ports for 4 twiddle words
- readback port for result words
- a small FSM around the existing `ntt_stage_8` datapath

Verified locally:

```text
PASS: tb_ntt_core_8
```

Current next step: user should run `./scripts/run_ntt_core_8_tb.sh` from WSL and paste the result.

## Final PDF goal

At the end of the ASIC conversion work, prepare a PDF document summarizing:

- original project structure
- branch meanings
- why the original repo is FPGA/HLS rather than ASIC
- ASIC conversion strategy
- created folder structure
- golden model and vector-generation flow
- RTL modules created
- simulation results
- synthesis readiness checks
- remaining ASIC tasks
- lessons learned and caveats

This markdown file should be used as the running source for that final PDF.
