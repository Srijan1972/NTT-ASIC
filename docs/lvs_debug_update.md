# LVS debug update for asic-conversion

The `asic-conversion` branch has been updated with the SRAM-macro LVS fix needed before rerunning OpenLane on the ASIC RTL.

## Problem addressed

The Sky130 SRAM binding wrapper instantiated OpenRAM macros with conditional power pins internally, but the wrapper/top-level path did not explicitly expose and pass through `VPWR`/`VGND` under `USE_POWER_PINS`.

That can create schematic/layout ambiguity for SRAM macro power pins during LVS, especially when the layout macro pins are `vccd1`/`vssd1` and the chip-level OpenLane power nets are `VPWR`/`VGND`.

## Files updated

- `rtl/asic_sram_1rw_sky130.v`
- `rtl/ntt_core_256_sram.sv`
- `openlane/ntt_core_256_sram/config.tcl`
- `openlane/ntt_core_256_sram/bb/sky130_sram_1kbyte_1rw1r_32x256_8.v`
- `openlane/ntt_core_256_sram/bb/sky130_sram_1kbyte_1rw1r_8x1024_8.v`

## Changes made

1. Added conditional wrapper-level power ports to `asic_sram_1rw_sky130.v`:

```verilog
`ifdef USE_POWER_PINS
  inout VPWR,
  inout VGND,
`endif
```

2. Connected OpenRAM macro power pins to those wrapper-level power nets:

```verilog
.vccd1(VPWR),
.vssd1(VGND),
```

3. Added conditional top-level `VPWR`/`VGND` ports to `ntt_core_256_sram.sv`.

4. Connected all SRAM wrapper instances in `ntt_core_256_sram.sv` to top-level `VPWR`/`VGND` under `USE_POWER_PINS`.

5. Re-enabled LVS in the OpenLane config:

```tcl
set ::env(RUN_LVS) 1
```

6. Left KLayout XOR disabled for now because the physical-layout notes say XOR was killed by memory pressure on the SRAM-macro GDS:

```tcl
set ::env(RUN_KLAYOUT_XOR) 0
```

7. Added timescale/lint annotations to local SRAM blackbox stubs so the macro-bound netlist can be sanity-checked cleanly.

## Verification to run

Before OpenLane:

```bash
bash scripts/run_ntt_core_256_sram_tb.sh
bash scripts/lint_rtl.sh
```

Macro-bound lint with power pins:

```bash
verilator --lint-only -Wall -DUSE_POWER_PINS --top-module ntt_core_256_sram \
  rtl/asic_sram_1rw_sky130.v \
  openlane/ntt_core_256_sram/bb/sky130_sram_1kbyte_1rw1r_32x256_8.v \
  openlane/ntt_core_256_sram/bb/sky130_sram_1kbyte_1rw1r_8x1024_8.v \
  rtl/mod_add.sv rtl/mod_sub.sv rtl/modmul_montgomery.sv \
  rtl/ntt_butterfly.sv rtl/ntt_core_256_sram.sv
```

Then rerun OpenLane for:

- design: `ntt_core_256_sram`
- config: `openlane/ntt_core_256_sram/config.tcl`

If LVS still reports an unmatched net, preserve the generated LVS report so the exact net/cell/pin can be fixed directly.
