Physical layout artifacts for ntt_core_8
========================================

This folder contains the final OpenLane physical-layout outputs from:

RUN_2026.06.07_21.03.25

The original GDS file is larger than GitHub's normal 100 MB file limit, so it is
not committed directly. It is split into chunks under:

final/gds_split/

To reconstruct the GDS from a checkout of this branch:

    cat final/gds_split/ntt_core_8.gds.part-* > final/gds/ntt_core_8.gds

Important signoff summary from this run:

- Magic DRC: 0 violations
- LVS: clean
- KLayout/Magic GDS XOR: no differences
- Antenna: 69 pin violations, 60 net violations
- Timing: setup failed at 10 ns
- Suggested clock period: about 28.89 ns

