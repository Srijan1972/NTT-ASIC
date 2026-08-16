# CI2609 Caravel Conversion Status

Date: August 16, 2026

## What was updated

The latest teammate work was fetched from `origin/Dillithium-NTT-ASIC` at commit
`a8dfbd2`. It was checked out separately so the existing Physical_Layout work was
not changed.

The main RTL update merges the old coefficient and zeta memory ports into one
interface: `mem_we`, `mem_re`, `mem_target`, `mem_slot`, `mem_addr`,
`mem_wdata`, `mem_rdata`, and `mem_rvalid`.

Local source checkout:

`/Users/jui-teng/nyu/NTT-ASIC-Dillithium`

Local Caravel conversion:

`/Users/jui-teng/nyu/Dillithium-NTT-Caravel-a8dfbd2`

Nothing from this work was pushed or submitted.

## Local integration work

The Caravel Wishbone wrapper was updated for the merged memory interface while
keeping the existing software address map:

- Coefficient memory: `0x30001000` through `0x30001fff`
- Zeta memory: `0x30002000` through `0x300027ff`

Two teammate test files were fixed locally because the pointwise test still used
the removed ports and the regression script could hide compile failures:

- `tb/tb_ntt_pointwise.sv`
- `scripts/run_all_tb.sh`

These fixes are local only.

## Functional verification

The complete upstream regression passed with behavioral RAM and with the SRAM
macro model:

- Modular multiplication: PASS
- Butterfly: PASS
- Full NTT: PASS
- Pointwise multiplication: PASS
- Polynomial multiplication: PASS
- SRAM macro NTT, pointwise, and polynomial tests: PASS

The Caravel Wishbone smoke test also passed with both behavioral RAM and the SRAM
macro model. It checked Wishbone access, SRAM readback, and the COPY operation.

## Physical run

LibreLane run tag: `CI2609_a8dfbd2_v1`

Run directory:

`openlane/ntt_user_macro/runs/CI2609_a8dfbd2_v1`

The run uses six Sky130 1-KiB SRAM macros and completed the full flow.

Final signoff summary:

- OpenROAD detailed-routing DRC: 0
- KLayout signoff DRC: 0
- LVS errors: 0
- Power-grid violations: 0
- Antenna violations: 123 pins / 114 nets
- Worst setup WNS: -3.629 ns
- Worst setup TNS: -220.254 ns
- Worst hold WNS: -0.537 ns
- Worst hold TNS: -4.467 ns
- Final instances: 112,071, including 6 SRAM macros
- Final instance utilization: 29.07%

Detailed routing converged as follows:

`23596 -> 13576 -> 12321 -> 1773 -> 136 -> 10 -> 0`

Antenna repair inserted 1,225 diodes. The intermediate count fell from 452 pins
/ 437 nets to 57/57, but final detailed routing ended at 123 pins / 114 nets.

## Generated views

Caravel-format views were exported directly into the project:

- `gds/ntt_user_macro.gds` (90 MiB)
- `lef/ntt_user_macro.lef`
- `def/ntt_user_macro.def`
- `verilog/gl/ntt_user_macro.v`
- `spef/ntt_user_macro.spef` and multicorner SPEF files
- `lib/ntt_user_macro.lib` and multicorner Liberty files

The complete final result, including GDS, DEF, LEF, netlists, SPICE, SDF, SPEF,
Liberty, and metrics, is under:

`openlane/ntt_user_macro/runs/CI2609_a8dfbd2_v1/final`

## Current conclusion

This is a successful local Caravel conversion and a valid physical baseline:
functional tests pass, routing is clean, KLayout DRC is clean, and LVS is clean.
It is not yet the final tapeout candidate because multicorner timing and antenna
still need optimization. The next run should target those two issues without
giving up the current 0-DRC and 0-LVS result.
