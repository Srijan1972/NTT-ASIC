# NTT-ASIC Caravel user project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

This branch integrates a 256-point, SRAM-backed number theoretic transform
(NTT) accelerator into the Sky130 Caravel user-project harness. The accelerator
is a Wishbone peripheral at the Caravel user-project base address. Its physical
implementation uses six `sky130_sram_1kbyte_1rw1r_32x256_8` macros.

## Integration status

The RTL, Wishbone wrapper, SRAM macro configuration, wrapper integration, GPIO
defaults, and RTL regression are present. Physical signoff is **not complete**:
the latest leaf run routed with zero OpenROAD detailed-routing violations, but
Magic extraction/LVS failed. Do not submit or treat the checked-in placeholder
physical views as final until a clean leaf run replaces them.

## Build order

After installing the exact Caravel/OpenLane/PDK dependencies with `make setup`:

```sh
make -C verilog/dv/ntt_wb
make ntt
make user_project_wrapper
make verify-all-rtl
make verify-all-gl
make verify-all-gl-sdf
make extract-parasitics
make create-spef-mapping
make caravel-sta
make run-precheck
```

The leaf must pass routing, DRC, LVS, antenna, and timing checks before hardening
`user_project_wrapper`. Full details, the register map, and signoff criteria are
in [docs/caravel2.md](docs/caravel2.md). The upstream harness workflow is in the
[Caravel user-project documentation](https://caravel-user-project.readthedocs.io/en/latest/#starting-your-project).

## Wishbone interface

The accelerator uses offsets `0x00` through `0x1c` from the Caravel
user-project base address (`0x3000_0000` in management firmware). The included
full-harness test writes an SRAM coefficient, reads it back, runs a COPY command,
and verifies the copied coefficient.
