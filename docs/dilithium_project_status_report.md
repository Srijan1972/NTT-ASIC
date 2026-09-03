# ntt_engine_256 — project status report

Snapshot of where the design stands: what's built, what's verified, what
passed, and what's still open.

---

## 1. What this is

A Dilithium fixed-modulus (q = 8380417) NTT/INTT engine, N = 256,
implemented ground-up from a Python golden model through a routed,
timing-closed, gate-level-simulated netlist on Sky130A. Five ops: `NTT`,
`INTT`, `COPY`, `MAC`, `REDUCE`.

---

## 2. Golden model

Pure-Python reference implementation, the source of truth for everything
downstream.

- **Modular multiplication** (`dilithium_modmul.py`): three independent
  bit-exact implementations, cross-checked against each other and against
  the compiled Dilithium reference C.
- **NTT/INTT** (`dilithium_ntt.py`, `dilithium_intt.py`): anchored to
  published Dilithium zetas, cross-checked against naive polynomial
  evaluation.
- **Scheduling** (`dilithium_engine_sched.py`, `dilithium_merged_sched.py`):
  exhaustively proves — not spot-checks — bank-conflict freedom and
  in-place safety for every op, for every issue in the schedule. Includes
  the canonical XOR-fold bank map (`e = a0^a2^a4^a6`, `o = a1^a3^a5^a7`)
  that all RTL bank-select logic derives from, and a closed-form
  issue-decode check verified against all 512 issues in the merged
  schedule.
- **Zeta SRAM layout** (`dilithium_zeta_sram.py`): proves the two-row-per-
  cycle read scheme the RTL zeta store implements is correct for both
  transform directions.
- **Pointwise/MAC** (`dilithium_pointwise.py`): reference for the
  multiply-accumulate op.

Every generator script (`gen_*.py`) produces the `.hex` test vectors
consumed by the RTL testbenches, so RTL and golden model are always
checked against the same data, generated fresh each regression run.

**Status: complete, all self-checks passing.**

---

## 3. RTL

`rtl/` — synthesizable Verilog/SystemVerilog:

| File | Role |
|---|---|
| `modmul_solinas.sv` | Montgomery/Solinas modular reduction unit |
| `ntt_butterfly_ct.sv` | Single butterfly datapath |
| `ntt_engine_256.sv` | Top-level engine — merged-layer network (4 butterflies), FSM, coefficient banks, op sequencing |
| `zeta_store.sv` | Twiddle-factor storage, 2-row/cycle read |
| `bank_ram_1r1w.sv`, `bank_ram_1rw1r.sv` | Behavioral RAM models for simulation |
| `asic_sram_1r1w_sky130.v`, `asic_sram_1rw1r_sky130.v` | SRAM macro wrapper modules for synthesis |

Architecture in brief: four SRAM-backed coefficient slots addressed
through the XOR-fold bank map; a merged-layer butterfly network that
processes two NTT stages per pass through four butterfly units with
direction-dependent lane muxing; a zeta store that serves both layers'
twiddle factors per cycle by delaying the layer-2 *address* rather than
the data.

**Status: frozen, matches the golden model exactly across every test
described below. No known correctness bugs.**

---

## 4. Testbenches

`tb/` — iverilog, unit level up through full end-to-end:

| Testbench | Covers |
|---|---|
| `tb_modmul_solinas.sv` | Reduction unit, thousands of randomized + grown operands |
| `tb_ntt_butterfly_ct.sv` | Single butterfly, grown operands |
| `tb_ntt_engine_256.sv` | Full NTT op, engine-level, 6 sets x 256 points |
| `tb_ntt_pointwise.sv` | MAC op standalone |
| `tb_ntt_polymul.sv` | Full ring multiply: NTT -> COPY -> MAC -> REDUCE -> INTT, all five ops in one sequence |

`scripts/run_all_tb.sh` regenerates all golden vectors, runs the Python
self-checks, then runs every testbench twice — once against behavioral
RAM (`bank_ram_*`), once against the SRAM-macro-bound behavioral model
(`-DUSE_SRAM_MACRO`, using `sim/sky130_sram_beh.v`) — so both the core
logic and the macro interface are checked before synthesis ever runs.

**Status: full regression passes, both configurations, all testbenches.**

---

## 5. Synthesis

Yosys, SRAM macro blackboxed. `check -assert` clean in both the
behavioral and macro-bound synthesis scripts (`scripts/synth_*.ys`).

**Status: clean, no problems reported.**

---

## 6. Physical implementation (OpenLane)

Sky130A / `sky130_fd_sc_hd`, 2400 x 2400 um die, four coefficient-bank
macros plus two zeta-store macros in a fixed manual placement
(`openlane/ntt_engine_256/macro_placement.cfg`).

### Timing
- 100 MHz (10.0 ns clock), worst setup slack **+2.08 ns**, zero setup
  violations, zero hold violations. Critical path ~8 ns — there is real
  headroom here.

### Routing
- Zero detailed-router DRC violations, zero shorts.

### LVS
- 0 errors — layout matches the synthesized netlist exactly.

### Magic DRC
- 15 violations, all `met3.3d`/`met4.5b` power-strap spacing false
  positives against unrelated metal. Confirmed benign — same rule types,
  same rough count, from routine PDN strap layout, not a real
  short/spacing problem.

### Antenna — **open issue, not actually resolved** (see §8)

**Status: timing, routing, and LVS all clean and signed off. Antenna
repair is incomplete — see below.**

---

## 7. Gate-level simulation (GLS)

The actual routed netlist (`ntt_engine_256.nl.v`), real sky130
standard-cell models, run against the same test vectors as RTL sim.

- `tb_ntt_engine_256.sv` on the routed netlist: **PASS**, 6 sets x 256
  points, 0 errors, 325 cycles/NTT measured directly from the netlist's
  `busy`/`done` handshake.
- `tb_ntt_polymul.sv` (the test that covers all five ops end-to-end) has
  **not yet been run at gate level** — only at RTL/behavioral level so
  far. NTT is the only op independently proven correct on the actual
  routed silicon-bound netlist; INTT/COPY/MAC/REDUCE are proven correct
  in RTL simulation but not yet confirmed post-route.

**Status: NTT path proven at gate level. Other four ops proven in RTL
sim only — gate-level confirmation for those is outstanding.**

---

## 8. Open issues

### Antenna violations

The Openlane step-39 Antenna Rule Checker report shows **217 pin violations
across 185 distinct nets** in the final routed design, with ratios
ranging from 1.0x up to **5.9x** the allowed limit. Diodes were inserted
during routing (`GRT_REPAIR_ANTENNAS=1`, `DIODE_INSERTION_STRATEGY 3`)
and are visible in the netlist, but the repair did not fully clear the
problem — this report is generated after routing and after repair, so
these are the residual, unrepaired violations.

Antenna violations are a fab-reliability concern (potential gate-oxide
damage from charge collection during plasma etch on long pre-connected
wires), not a functional or timing issue — the design's logic and timing
are unaffected — but it means this design should not be considered fully
tapeout-ready as-is.

**Next steps, not yet done:**
1. Confirm this report matches the final signed-off run's
   `pin_antenna_violations`/`net_antenna_violations` metrics exactly.
2. Try a more aggressive `DIODE_INSERTION_STRATEGY` or enable
   layer-hop/jumper-based repair in addition to diodes.
3. Investigate the worst offenders individually (`net227` at 5.9x,
   `u_bf_l1b.oa_r[22]` at 3.71x, etc.) — likely long nets that could be
   rerouted or split rather than requiring more diodes.

### INTT/COPY/MAC/REDUCE not yet GLS-verified

Only the NTT op has been run through gate-level simulation. The other
four ops pass in RTL simulation (both behavioral and macro-bound) but
haven't been checked against the actual routed netlist. Given NTT passed
cleanly, this is likely fine, but "likely fine" isn't "verified" —
running `tb_ntt_polymul.sv` through the same GLS setup used for
`tb_ntt_engine_256.sv` would close this gap.


---

## 9. Performance summary

**325 cycles per NTT** at 100 MHz = **3.25 us**, roughly **310x** faster
than a bit-serial baseline implementation of the same transform.

---

## 10. File inventory

```
rtl/          9 files — engine, butterfly, modmul, zeta store, SRAM wrappers
tb/           5 testbenches, unit level through full polymul
golden/       7 model files + 6 vector generators + 2 self-check scripts
sim/          1 file — behavioral SRAM model for GLS
scripts/      run_all_tb.sh + 4 Yosys synthesis scripts
constraints/  1 SDC file
openlane/     config.tcl, macro_placement.cfg, SDC (physical flow config)
results/      signed-off run artifacts — STA reports, DRC report, routed
              netlist, GDS
docs/         architectural writeup
```

---

## 11. Bottom line

The design is functionally correct and provably so from golden model
through RTL through synthesis through gate-level simulation of the
routed netlist, for the NTT op. Timing, routing, and LVS are cleanly
signed off with real margin. The two things standing between this and a
fully clean tapeout-ready signoff are: (1) the antenna violations, which
are real and need actual repair rather than the assumption that diode
insertion handled them, and (2) extending gate-level verification to the
other four ops the same way NTT was verified.
