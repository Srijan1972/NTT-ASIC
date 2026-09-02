# NTT-ASIC Caravel user project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

This branch integrates a 256-point, SRAM-backed number theoretic transform
(NTT) accelerator into the Sky130 Caravel user-project harness. The accelerator
is a Wishbone peripheral at the Caravel user-project base address. Its physical
implementation uses six `sky130_sram_1kbyte_1rw1r_32x256_8` macros.

## Integration status

The `caravel3` implementation uses two separately hardened leaf macros:
`ntt_engine_256` and `ntt_wb_bridge`. These macros are instantiated in the
Caravel `user_project_wrapper`. RTL verification passes, and local OpenLane
runs have produced the complete two-macro hierarchy with clean detailed routing,
LVS, and setup/hold timing. Residual antenna and foundry-precheck markers remain,
so a completed OpenLane run must not be interpreted as final tapeout approval.

## Caravel3 setup and hardening

Docker must be running. From a clean checkout of this branch, fetch the Git LFS
objects and install the pinned Caravel, OpenLane, Sky130 PDK, and verification
dependencies:

```sh
git checkout caravel3
git lfs pull
make setup
```

Run the RTL regression before hardening:

```sh
make setup-cocotb
make cocotb-verify-all-rtl
```

Harden the two leaf macros first, followed by the Caravel wrapper. Do not change
this order:

```sh
make ntt_engine_256
make ntt_wb_bridge
make user_project_wrapper
```

The `ntt_wb_bridge` target also validates and annotates the generated bridge
LEF so `VPWR` and `VGND` are exported as power and ground pins. Do not bypass
the top-level target with `make -C openlane ntt_wb_bridge`, because that skips
this required Caravel3 post-export step.

`user_project_wrapper` consumes the generated LEF, GDS, Liberty, and gate-level
Verilog views from both leaf macros. Running only `make user_project_wrapper` is
appropriate only when those checked-in or previously generated macro views are
already present and trusted.

After hardening, run the Caravel signoff steps:

```sh
make extract-parasitics
make create-spef-mapping
make caravel-sta
make run-precheck
```

Each leaf must complete routing, DRC, LVS, antenna, and timing checks before the
wrapper is treated as reproducible.

### Legacy target warning

Do **not** use `make ntt` or `make harden` for Caravel3. `make ntt` selects the
older monolithic Caravel2 configuration under `openlane/ntt`; it is not part of
the Caravel3 physical hierarchy. `make harden` also discovers legacy/template
OpenLane directories and therefore runs targets that are not part of the
Caravel3 sequence.

The supported Caravel3 sequence is exactly:

```text
ntt_engine_256 -> ntt_wb_bridge -> user_project_wrapper
```

The CI workflow derives the same sequence from
`lvs/user_project_wrapper/lvs_config.json`. The upstream harness workflow is in
the [Caravel user-project documentation](https://caravel-user-project.readthedocs.io/en/latest/#starting-your-project).

## Wishbone interface

The accelerator uses offsets `0x00` through `0x1c` from the Caravel
user-project base address (`0x3000_0000` in management firmware). The included
full-harness test writes an SRAM coefficient, reads it back, runs a COPY command,
and verifies the copied coefficient.
