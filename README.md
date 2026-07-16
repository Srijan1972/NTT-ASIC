# Dilithium NTT ASIC — fixed-q polynomial multiply engine

Ground-up N=256 NTT accelerator specific to the Dilithium prime
(q = 8380417 = 2^23 - 2^13 + 1), targeting Sky130 via OpenLane. Dual
radix-2, in-place, 4 XOR-banked coefficient SRAMs. Computes forward NTT,
pointwise multiply-accumulate, and inverse NTT with tomont scaling — i.e.
complete ring multiplication in Z_q[X]/(X^256+1).

Reduction is Montgomery REDUCE32 matching the Dilithium reference C
(signed, QINV = 58728449), with the q-multiply done as the Solinas
shift-add (m<<23) - (m<<13) + m. No multiplier in any reduction path.

## Performance
- Forward NTT / inverse NTT: 577 cycles each (~5.8 us at 100 MHz)
- Pointwise MAC: ~272 cycles per polynomial term
- vs the teammate's bit-serial fixed-q design: ~100k+ cycles per NTT

## Directory layout
```
rtl/            synthesizable RTL (the tapeout sources)
  modmul_solinas.sv       4-stage Montgomery/Solinas multiplier
  ntt_butterfly_ct.sv     unified CT/GS butterfly (mode bit)
  zeta_rom.sv             GENERATED twiddle ROM (gen_zeta_rom.py)
  bank_ram_1r1w.sv        behavioral bank RAM (simulation / generic synth)
  asic_sram_1r1w_sky130.v SRAM macro wrapper (OpenLane path)
  ntt_engine_256.sv       top level: 5 ops, 4 banks, 4 slots
sim/
  sky130_sram_beh.v       behavioral model of the OpenRAM macro (sim only)
tb/             self-checking testbenches (5)
golden/         Python golden models, proofs, and vector generators
  test_vectors/           regenerable .hex stimulus/expected files
openlane/ntt_engine_256/  config.tcl + macro_placement.cfg
constraints/    ntt_engine_256.sdc
scripts/        run_all_tb.sh + Yosys synth-check scripts
docs/           openlane_handoff_engine.md
```

## Reproduce verification (needs python3 + iverilog)
```
bash scripts/run_all_tb.sh
```
Regenerates all golden collateral, runs the Python self-checks, then all
5 testbenches in both behavioral-RAM and SRAM-macro-bound configurations.
Everything should print PASS. This does NOT need the PDK or OpenLane.

## Engine operations (op field, 3 bits)
| op | name   | slots used              | notes                              |
|----|--------|-------------------------|------------------------------------|
| 0  | NTT    | slot 0                  | forward, in-place                  |
| 1  | COPY   | slot_a -> slot_c        | 4 coeff/cycle                      |
| 2  | MAC    | slot_c += slot_a o slot_b | mac_init zeroes acc; sq bypass   |
| 3  | INTT   | slot 0                  | inverse + tomont scale (f=41978)   |
| 4  | REDUCE | slot_a -> slot_c        | reference reduce32, centered       |

Full ring multiply c = a*b:
```
load a -> NTT -> COPY 0->1
load b -> NTT -> COPY 0->2
MAC slot1 o slot2 -> slot3   (mac_init=1)
REDUCE slot3 -> slot0        (INTT requires |x| < q)
INTT slot0
read back slot0 = a*b mod (X^256+1, q)
```
Accumulation (a0*b0 + a1*b1): repeat the NTT/COPY/MAC block per term with
mac_init=1 only on the first, then REDUCE + INTT once.

Contracts: inputs centered signed |x| < q; NTT/MAC outputs are lazy
(< 9q / < L*q) so run REDUCE before INTT; INTT output is |x| < q.

===========================================================================
# OpenLane run instructions
===========================================================================

Prereqs on the flow machine: a working OpenLane install, the sky130A PDK,
and the OpenRAM macro release that provides
sky130_sram_1kbyte_1rw1r_32x256_8 (the same one the asic-conversion branch
uses — verilog + lef + gds + lib).

## 1. Point the build at the SRAM macro
`openlane/ntt_engine_256/config.tcl` reads $::env(SRAM_ROOT) for the macro
collateral. Set it to the directory that contains verilog/ lef/ gds/ lib/
for the macro, e.g.:
```
export SRAM_ROOT=/path/to/sky130_sram_macros
```
Verify these four files exist and match the names in config.tcl:
```
$SRAM_ROOT/verilog/sky130_sram_1kbyte_1rw1r_32x256_8.v
$SRAM_ROOT/lef/sky130_sram_1kbyte_1rw1r_32x256_8.lef
$SRAM_ROOT/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds
$SRAM_ROOT/lib/sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib
```
(Adjust the .lib corner name in config.tcl if your release differs.)

## 2. Place the design in your OpenLane tree
Copy this repo's `openlane/ntt_engine_256/` into
`$OPENLANE_ROOT/designs/ntt_engine_256/`, keeping config.tcl and
macro_placement.cfg together. The config references the RTL via
$::env(DESIGN_DIR)/../rtl and ../constraints, so keep the repo structure
intact OR edit VERILOG_FILES / BASE_SDC_FILE to absolute paths.

## 3. Run the flow
```
cd $OPENLANE_ROOT
./flow.tcl -design ntt_engine_256
```

## 4. After synthesis: verify macro instance names (IMPORTANT)
Yosys flattening can rename the generate-block macro instances. Open
`runs/*/results/synthesis/ntt_engine_256.v` and confirm the four macro
instances are named:
```
g_banks[0].u_ram.u_macro
g_banks[1].u_ram.u_macro
g_banks[2].u_ram.u_macro
g_banks[3].u_ram.u_macro
```
If they differ (e.g. escaped names, or \g_banks[0].u_ram.u_macro ),
update BOTH `macro_placement.cfg` and the FP_PDN_MACRO_HOOKS list in
config.tcl to match, then re-run from floorplan. This is the single most
common first-run failure.

## 5. Watch these in the reports
- Congestion: die is 2000x2000 at density 0.30. If global routing
  congests, bump DIE_AREA to "0 0 2500 2500" (keep density 0.30). This is
  the same fix that resolved the earlier runtime-q core.
- Antenna: DIODE_INSERTION_STRATEGY 3 is enabled. Check the antenna
  report; the earlier design left ~20 violations to clean up.
- LVS: USE_POWER_PINS + FP_PDN_MACRO_HOOKS are already set (this was the
  unmatched-net fix from the asic-conversion branch). If LVS still flags
  the macro power nets, confirm the hook net names (vccd1/vssd1) match
  your PDK's power pin names on the macro.
- Timing: 10 ns target. The paths to watch if you push faster are the
  modmul stage-2 (64-bit 3-input Solinas add) and stage-3 (64-bit
  subtract), and the SRAM write-data muxes that select between the 5 ops.

## 6. Cell-count note for area
Generic synthesis (macro blackboxed) is ~37k standard cells + 4 macros.
The four macros dominate area (~1.1 mm^2 of the 4 mm^2 die). Well within
the 10 mm^2 Caravel user-project budget.

## Known-good fallback settings (from the earlier project)
If the flow struggles, these resolved analogous issues before:
- die 2500x2500 @ PL_TARGET_DENSITY 0.30 for congestion
- RUN_KLAYOUT_XOR 0 (already set) if the flow machine is memory-limited
- QUIT_ON_TIMING_VIOLATIONS 0 (already set) so a run completes for
  inspection even with residual timing to clean up


===========================================================================
# Post-flow status (2026-07-04) and remaining signoff steps
===========================================================================
The flow COMPLETED on Sky130A (RUN_2026.07.04_10.47.24): die 4 mm^2,
LVS 0 errors, routing 0 DRC, hold clean. First run was constrained at
10 ns and left setup WNS -4.38 ns (critical path: zeta ROM OR-tree);
config now targets 15 ns (~67 MHz), matching the tool-suggested period.
Magic DRC reports 86 residuals, all SRAM abstract-view boundary seams
(same-net power, proven by clean LVS) -- documented, not blocking.

Remaining before calling it signoff-quality:
1. Re-run the flow with this config (15 ns) for a clean setup report.
2. Gate-level simulation of the routed netlist:
       bash scripts/run_gls.sh <run-dir>
   (run on the flow machine; see the script header).

The config.tcl, macro_placement.cfg, and SDC in this repo are the exact
known-working versions including all bring-up fixes (Verilator skip,
sta-blackbox macro marker, DEF-escaped placement names, wildcard PDN
hook regex, abstract-view DRC). The SRAM macro .v under designs' macros/
must have '/// sta-blackbox' as its first line.
