# OpenLane handoff notes

Design top for initial OpenLane exploration:

- `ntt_stage_8_registered`

RTL files needed, in dependency order:

- `rtl/mod_add.sv`
- `rtl/mod_sub.sv`
- `rtl/modmul_montgomery.sv`
- `rtl/ntt_butterfly.sv`
- `rtl/ntt_stage_2.sv`
- `rtl/ntt_stage_4.sv`
- `rtl/ntt_stage_8.sv`
- `rtl/ntt_stage_8_registered.sv`

Important boundary:

- This handoff is for an initial physical-flow/OpenLane run.
- It is not a full production ASIC top.
- The current OpenLane handoff top is a clocked wrapper around the verified 8-wide NTT combinational datapath.
- It has `clk` and `rst_n`, and registered outputs so OpenLane has a clocked timing endpoint.

Clock/reset:

- clock port: `clk`
- reset port: `rst_n`, active low
- starter clock period: `10.000 ns`
- starter SDC: `constraints/ntt_stage_8_registered.sdc`

Verification scripts:

- `scripts/run_ntt_stage_8_registered_tb.sh`
- `scripts/lint_rtl.sh`
- `scripts/run_synth_ntt_stage_8_registered.sh`

Expected pass messages:

- `PASS: tb_ntt_stage_8_registered`
- `scripts/lint_rtl.sh` returns silently
- `PASS: ntt_stage_8_registered Yosys synthesizability check completed`

OpenLane starter config:

- `openlane/ntt_stage_8_registered/config.tcl`

Memory/SRAM status:

- The OpenLane handoff top does not instantiate the generic RAM yet.
- `rtl/simple_dual_port_ram.sv` exists as a generic inferred-memory block from RTL bring-up.
- There are no Xilinx BRAM primitives such as `RAMB18E1`, `RAMB36E1`, or `xpm_memory_*` in the clean handoff top.
- If the next owner builds a memory-backed accelerator core, they should replace/wrap inferred memories with process-specific SRAM macros for realistic area/timing.

Suggested next owner actions:

1. Choose the exact OpenLane version and PDK.
2. Copy or point OpenLane at `openlane/ntt_stage_8_registered/config.tcl`.
3. Run synthesis first before full place/route.
4. Inspect timing around the Montgomery multiplier; it is the likely critical path.
5. If timing fails, pipeline/register the multiplier/datapath before attempting serious floorplanning.
6. Only add SRAM macro integration after the memory-backed core architecture is stable.
