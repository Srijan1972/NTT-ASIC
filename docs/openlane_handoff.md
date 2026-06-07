# OpenLane handoff notes

Recommended design top for OpenLane handoff:

- `ntt_core_8`

This is stronger than the earlier starter wrapper `ntt_stage_8_registered` because it includes a small accelerator-style interface and FSM around the verified datapath.

RTL files needed, in dependency order:

- `rtl/mod_add.sv`
- `rtl/mod_sub.sv`
- `rtl/modmul_montgomery.sv`
- `rtl/ntt_butterfly.sv`
- `rtl/ntt_stage_2.sv`
- `rtl/ntt_stage_4.sv`
- `rtl/ntt_stage_8.sv`
- `rtl/ntt_core_8.sv`

Top-level interface summary:

- `clk`
- `rst_n`, active low
- `start`
- `busy`
- `done`
- data load interface:
  - `load_data_en`
  - `load_data_addr[2:0]`
  - `load_data[31:0]`
- twiddle load interface:
  - `load_twiddle_en`
  - `load_twiddle_addr[1:0]`
  - `load_twiddle[31:0]`
- result readback interface:
  - `read_addr[2:0]`
  - `read_data[31:0]`

Important boundary:

- This handoff is for an initial physical-flow/OpenLane run on a small 8-point NTT-style core.
- It is not a full production accelerator for the target NTT size.
- It is ASIC-oriented RTL, not final tapeout-ready RTL.
- The current small memories are inferred register arrays inside `ntt_core_8`.
- For a realistic larger accelerator, the next owner should introduce SRAM macro wrappers after choosing a PDK/memory compiler.

Clock/reset:

- clock port: `clk`
- reset port: `rst_n`, active low
- starter clock period: `10.000 ns`
- starter SDC: `constraints/ntt_core_8.sdc`

Verification scripts:

- `scripts/run_ntt_core_8_tb.sh`
- `scripts/lint_rtl.sh`
- `scripts/run_synth_ntt_core_8.sh`
- `scripts/check_openlane_handoff_readiness.sh`

Expected pass messages:

- `PASS: tb_ntt_core_8`
- `scripts/lint_rtl.sh` returns silently
- `PASS: ntt_core_8 Yosys synthesizability check completed`
- `PASS: OpenLane handoff readiness checks completed`

OpenLane starter config:

- `openlane/ntt_core_8/config.tcl`

Older starter-block handoff files also exist:

- `rtl/ntt_stage_8_registered.sv`
- `openlane/ntt_stage_8_registered/config.tcl`
- `constraints/ntt_stage_8_registered.sdc`

Use `ntt_core_8` unless you specifically want the simpler registered datapath slice.

Memory/SRAM status:

- The clean RTL does not instantiate Xilinx FPGA RAM primitives such as `RAMB18E1`, `RAMB36E1`, or `xpm_memory_*`.
- `ntt_core_8` currently uses small inferred register arrays for 8 data words and 4 twiddle words.
- This is acceptable for an initial OpenLane run.
- For realistic area/timing at larger NTT sizes, replace/wrap memory with process-specific SRAM macros.

Suggested next owner actions:

1. Choose the exact OpenLane version and PDK.
2. Use `openlane/ntt_core_8/config.tcl` as the starter config.
3. Run synthesis first before full place/route.
4. Inspect timing around the Montgomery multiplier; it is the likely critical path.
5. If timing fails, pipeline/register the multiplier/datapath before serious floorplanning.
6. For larger NTT sizes, replace inferred memories with SRAM macro wrappers and plan macro placement.
