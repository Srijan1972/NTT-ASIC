# Caravel NTT integration (`caravel2`)

This branch hardens the NTT as a leaf macro before placing it in
`user_project_wrapper`. Do not flatten the NTT RTL into the wrapper: the engine
contains six 1 KiB SRAMs and requires their Sky130 physical views.

## Current branch status

- [x] Caravel user-project repository structure and wrapper pinout
- [x] Wishbone register bridge and SRAM-backed NTT integration
- [x] Valid power-on GPIO defaults for GPIO 5 through 37
- [x] Leaf self-checking RTL test
- [x] Full Caravel RTL firmware test (`wb_port`)
- [x] NTT cocotb test definition and RISC-V firmware syntax check
- [x] OpenLane leaf/wrapper configuration and standalone LVS configuration
- [x] Project metadata (`info.yaml`; replace its placeholder project ID before submission)
- [x] Non-layout prechecks: license/SPDX, Makefile, defaults, documentation, GPIO definitions
- [ ] Clean NTT leaf physical signoff
- [ ] Export signed-off NTT GDS/LEF/Liberty/netlist/SDF views
- [ ] Harden and sign off `user_project_wrapper`
- [ ] Full Caravel gate-level and SDF regressions
- [ ] Multicorner Caravel STA, standalone LVS, and MPW precheck

The latest leaf attempt is
`openlane/ntt/runs/caravel2_ntt_r4`. OpenROAD detailed routing reported zero
violations, but Magic extraction reported 741,902 illegal `obsli1`/`locali`
overlaps and LVS did not match (including disconnected duplicate power ports).
That run is diagnostic only: do not copy its final views into the repository or
use them to harden the wrapper.

## Required order

1. Run the RTL regression.
2. Harden `openlane/ntt` and inspect its routing/signoff reports.
3. Harden `openlane/user_project_wrapper` using the generated NTT views.
4. Run Caravel RTL and gate-level verification.
5. Run the full harness, precheck, DRC, LVS, antenna, timing, and XOR checks.

The next command in this branch is `make setup` because `caravel/`,
`mgmt_core_wrapper/`, `dependencies/pdks/`, and `dependencies/openlane_src/`
are not installed in this checkout. Then rerun `make ntt`: the Wishbone RTL was
updated after the diagnostic physical run, so that old run cannot be exported
even if its extraction problem is repaired manually.

With a standard Caravel project environment:

```sh
make ntt
make user_project_wrapper
make verify-all-rtl
make verify-all-gl
make run-precheck
```

After `make ntt`, stop unless the new run has clean detailed-routing, Magic and
KLayout DRC, LVS, antenna, and timing reports. Only then copy the run's final
views to the repository (the OpenLane `-save` flow normally does this), run
`make lvs-ntt`, and proceed to `make user_project_wrapper`.

`make ntt` must produce or update at least:

- `lef/ntt.lef`
- `gds/ntt.gds`
- `lib/ntt.lib`
- `verilog/gl/ntt.v`

The NTT flow obtains the OpenRAM LEF, GDS, Liberty, and blackbox information
from `sky130A/libs.ref/sky130_sram_macros`. A compatible Sky130 PDK install is
therefore mandatory.

## Physical strategy

- Six `sky130_sram_1kbyte_1rw1r_32x256_8` macros are instantiated by defining
  `USE_SRAM_MACRO`.
- SRAM placement is fixed by `openlane/ntt/macro_placement.cfg`.
- The leaf starts at 25% floorplan utilization and 35% placement density.
- Leaf routing can use `met5` to escape the SRAMs' `met4` pins.
- The Caravel-facing macro boundary carries Wishbone and three status outputs;
  the 384 Logic Analyzer wires terminate in `user_project_wrapper`.
- The wrapper uses the routed NTT LEF/GDS/Liberty view and does not synthesize
  the NTT internals again.

## Wishbone register map

Offsets use `wbs_adr_i[7:0]`:

| Offset | Name | Function |
| --- | --- | --- |
| `0x00` | `CMD` | `[0]` start pulse, `[3:1]` op, `[5:4]` slot A, `[7:6]` slot B, `[9:8]` slot C, `[10]` MAC init |
| `0x04` | `EXT_WR_CTL` | `[0]` write pulse, `[2:1]` slot, `[10:3]` coefficient address |
| `0x08` | `EXT_RD_CTL` | `[0]` read pulse, `[2:1]` slot, `[10:3]` coefficient address |
| `0x0c` | `EXT_WR_DAT` | 32-bit coefficient write data |
| `0x10` | `ZLOAD_DAT` | 32-bit zeta write data |
| `0x14` | `ZLOAD_CTL` | `[0]` write pulse, `[9:1]` zeta address |
| `0x18` | `STATUS` | `[0]` busy, `[1]` done, `[2]` external-read-valid pending |
| `0x1c` | `EXT_RD_DAT` | 32-bit coefficient read data; reading clears status bit 2 |

The `start`, external read/write, and zeta-write bits are one-cycle strobes.
The byte-select inputs are honored for writable register bytes. External-read
valid is latched so management firmware cannot miss the engine's one-cycle
pulse; starting another external read or reading `EXT_RD_DAT` clears it.

## Local RTL regression

The self-checking testbench is `verilog/dv/ntt_wb/ntt_wb_tb.v`. It checks
Wishbone acknowledgement, coefficient write/read data, read-valid status, and
operation start/completion. It can be run with Icarus Verilog using the file
list in `verilog/dv/ntt_wb/Makefile`.

## Signoff policy

Generated artifacts are not considered valid merely because OpenLane reaches
the final step. Before full harness integration, confirm:

- exactly six SRAM macros and no inferred RTL memories in synthesis;
- zero detailed-routing shorts/spacing violations;
- zero Magic and KLayout DRC violations;
- zero LVS errors;
- no setup or hold violations at the required corners;
- antenna results are understood and repaired or formally waived;
- the wrapper's PDN connects the NTT `vccd1` and `vssd1` pins.
