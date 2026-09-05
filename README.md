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
LVS, and setup/hold timing. The current ChipFoundry precheck has no real FEOL or
BEOL violations; it reports only the two false-positive rule families that
ChipFoundry explicitly approved for this design. ChipFoundry must still rerun
its proprietary poly and diffusion/tap density checks before tapeout approval.

## Caravel3 setup and hardening

Docker must be running. From a clean checkout of this branch, fetch the Git LFS
objects and install the pinned Caravel, OpenLane, Sky130 PDK, and verification
dependencies:

```sh
git checkout caravel3
git lfs pull
make setup
```

On macOS with Homebrew Python 3.14, run the setup as
`make setup PYTHON_BIN=/usr/bin/python3` instead.

This branch pins open_pdks/Volare revision
`8afc8346a57fe1ab7934ba5a6056ea8b43078e71`. That revision is required because
it contains `sky130_ef_sc_hd__decap_40_12` and the precompiled PDK OpenRAM view
used by the NTT engine. Do not substitute the older `78b7bc32...` PDK.

Run the RTL regression before hardening:

```sh
make setup-cocotb
make cocotb-verify-all-rtl
```

`caravel-cocotb` currently requires Python 3.13 or older. On macOS systems
where Homebrew `python3` is 3.14, use the system Python 3.9 explicitly:

```sh
make setup-cocotb PYTHON_BIN=/usr/bin/python3
make cocotb-verify-all-rtl
```

Harden the two leaf macros first, followed by the Caravel wrapper. Do not change
this order:

```sh
make ntt_engine_256
make ntt_wb_bridge
make user_project_wrapper
```

The two leaf targets automatically refresh their checked-in `.gds.gz` views.
This is required because `user_project_wrapper` consumes the compressed GDS
files; manually invoking the OpenLane subdirectory target would leave stale
compressed macro views.

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

`caravel-sta` runs timing corners sequentially by default because three
concurrent full-chip OpenSTA processes can exceed Docker Desktop's memory limit
on a Mac. A machine with sufficient RAM can opt in to parallel corners with
`make caravel-sta STA_JOBS=3`.

The STA preparation helper treats `ntt_engine_256` and `ntt_wb_bridge` as
hardened macros: it loads their Liberty timing models and does not expand their
large internal gate-level netlists or annotate their internal SPEFs at the
Caravel level. Leaf timing and parasitics are checked during each macro's own
OpenLane run. Messages about missing top-level Caravel, padframe, POR, or user-ID
SPEFs are inherited from the upstream Caravel timing flow and are allowed by
`ALLOW_MISSING_SPEF=1`; the pass/fail result is the nine-corner summary printed
at the end of `make caravel-sta`.

Run the current ChipFoundry geometry precheck locally. On Apple Silicon, the
flattened LVS/OEB extractor can spend hours deleting hundreds of thousands of
physical-only objects under x86 emulation, so run those two checks remotely:

```sh
cf precheck --skip-checks lvs --skip-checks oeb
cf precheck --remote --poll --git-ref caravel3
```

For this design, `MR_licon.SP.6` and `MR_mcon.CON.10` are known false positives
that ChipFoundry has explicitly said can be ignored. Any other FEOL or BEOL rule
category is a real blocker and must be fixed before upload. Local precheck does
not replace ChipFoundry's proprietary poly-density and diffusion/tap-density
PV; request a new platform PV report after uploading the corrected project.

Each leaf must complete routing, DRC, LVS, and timing checks before the wrapper
is treated as reproducible. Review leaf antenna reports against the foundry PV;
the wrapper-level OpenROAD antenna check is clean in the current build.

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
