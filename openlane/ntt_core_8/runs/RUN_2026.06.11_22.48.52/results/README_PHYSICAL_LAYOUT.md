# NTT Core 8 Physical Layout

This directory contains the final OpenLane physical-design outputs for
`ntt_core_8` using the Sky130A PDK and `sky130_fd_sc_hd` standard cells.

## Run

- OpenLane run: `RUN_2026.06.11_22.48.52`
- Clock target: 10.000 ns (100 MHz)
- Synthesis strategy: `DELAY 0`
- Flow status: completed
- Critical register-to-register path: 2.43 ns
- Setup violations: 0
- Hold violations: 0
- Magic DRC violations: 0
- LVS errors: 0
- KLayout/Magic XOR differences: 0

## Remaining Warnings

- Antenna violations: 92 pins, 75 nets
- Maximum fanout violations: 37
- IR-drop results are preliminary because `VSRC_LOC_FILES` was not provided.

## Main Deliverables

The `final` directory contains the GDS, DEF, LEF, Liberty, SDC, SDF, SPEF,
SPICE, and gate-level Verilog views. Detailed timing and manufacturability
reports are available under the run's `reports` directory.
