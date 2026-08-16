# Dilithium NTT Caravel Integration

## Current local milestone

This project starts from ChipFoundry's `caravel_user_project` template and
integrates the `Dillithium-NTT-ASIC` RTL at commit `3f70f19`. It is local only:
it has not been registered with ChipFoundry, committed, pushed, or submitted.

The design is packaged as one macro named `ntt_user_macro`. The macro contains:

- a Wishbone slave bridge
- the 256-coefficient Dilithium NTT engine
- four coefficient SRAM banks
- two zeta SRAM banks

All six memories use `sky130_sram_1kbyte_1rw1r_32x256_8`. Its GDS, LEF,
Liberty, and Verilog views are kept under `macros/` for reproducible hardening.

## Wishbone map

All addresses are under the Caravel user-project base `0x3000_0000`.

| Address range | Function |
| --- | --- |
| `0x3000_0000` | Control: bit 0 start, bits 3:1 operation, bit 4 MAC initialize |
| `0x3000_0004` | Slots: A in bits 1:0, B in bits 3:2, C in bits 5:4 |
| `0x3000_0008` | Status: bit 0 busy, bit 1 done pending |
| `0x3000_000c` | IRQ: bit 0 enable; write bit 1 to clear pending |
| `0x3000_1000-0x3000_1fff` | Four coefficient slots, 256 words per slot |
| `0x3000_2000-0x3000_27ff` | 512 write-only zeta words |

Operations use the engine encoding: NTT `0`, COPY `1`, MAC `2`, inverse NTT
`3`, and REDUCE `4`. Coefficient and zeta writes must select all four bytes.
Coefficient accesses while the engine is busy are rejected with a diagnostic
read value instead of modifying memory.

## What has been checked

- The OpenLane/LibreLane JSON files are syntactically valid.
- Verilator accepts the complete `user_project_wrapper` hierarchy.
- The local smoke test checks Wishbone SRAM readback and a COPY operation.

These checks are RTL-level checks. They do not replace DRC, LVS, antenna,
timing, gate-level simulation, or Caravel precheck.

The template's counter-specific tests and generated physical views were
removed because they do not describe this design. A management-core/cocotb
test that exercises the NTT Wishbone map through the complete Caravel harness
must be added before the RTL and gate-level `cf verify --all` results can be
treated as submission evidence.

## Required path to submission

Run these steps from the project root after reviewing the local files:

```bash
python3 -m pip install chipfoundry-cli
cf login
cf init
cf setup
cf gpio-config
cf harden ntt_user_macro
cf harden user_project_wrapper
cf verify --all --sim rtl
cf verify --all --sim gl
cf precheck
```

Do not run `cf push` yet. First confirm that the newly generated macro and
wrapper reports have zero DRC and LVS violations, acceptable timing, and an
antenna result approved for the selected shuttle. Then review the final
`gds/user_project_wrapper.gds` and `.cf/project.json` before creating a Draft
submission with `cf push`.

## Known physical-design work

The source branch's July 26 run was not final signoff: it reported 30 pin and
28 net antenna violations, and the branch did not include a complete matching
set of final GDS, DEF, LEF, Liberty, and SPEF views. Therefore this Caravel
project intentionally does not reuse those files as final macro views. A fresh
`ntt_user_macro` hardening run is the next physical milestone.
