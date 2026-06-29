# Final GDS Artifact

This folder contains the latest generated GDS artifact for the SRAM macro OpenLane flow.

- Design: `ntt_core_256_sram`
- Source run: `RUN_2026.06.25_sram_macro_antenna_fix`
- GDS: `ntt_core_256_sram.gds`
- Checksum: see `ntt_core_256_sram.gds.sha256`

Run notes:
- Magic abstract DRC count: 0
- Detailed route DRC count: 0
- Setup and hold timing: clean
- LVS was skipped for this final committed run
- KLayout XOR was disabled because the local run hit memory pressure
- Remaining antenna violations were documented in `docs/physical_layout_sram_macro_run.md`
