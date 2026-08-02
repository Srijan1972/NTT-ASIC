# Sammy Metal3 Minimum-Area ECO

This package applies a localized routing ECO to the accepted August 1
sink-side antenna-diode layout.  It eliminates the four Magic `met3.6`
markers without changing logical connectivity or reopening antenna.

## Physical change

The four report markers represented two undersized met3 islands at the bottom
of the input SRAM, on `input_sram.wdata[3]` and
`input_sram.wdata[28]`.  Each island connects an `M2M3_PR` via to an adjacent
`M3M4_PR` via whose centers are only 0.230 microns apart.

A 0.460-micron horizontal met3 area stub is added from each existing M3M4 via
toward its met4 SRAM-pin connection:

- `input_sram.wdata[3]`: `(206.540, 79.900)` to `(206.080, 79.900)`
- `input_sram.wdata[28]`: `(350.980, 79.900)` to `(350.520, 79.900)`

No cells, vias, routed endpoints, or net assignments move.

## Verification

- Magic DEF-based DRC: 0 markers, reduced from 4.
- OpenROAD antenna: 0 violating nets and 0 violating pins.
- Magic-extracted SPICE is byte-identical to the accepted `reloc8` extraction
  (`SHA256 7281d2d1d99cf9a10bff5530c94133e46075c08b0221f865dd866e9131bd17ac`).
- Netgen LVS: 0 total errors; the circuits match uniquely after normalizing
  the 8x1024 SRAM mask port to its LEF/SPICE bit-pin name, `wmask0[0]`, in the
  LVS-only powered reference view.
- The pre-existing Magic extraction feedback marker at
  `(637.705, 527.085)-(637.875, 527.255)` is unchanged.
- `input_sram.wdata[3]` capacitance changes from 0.0661030 pF to
  0.0662019 pF, an increase of 0.0000989 pF (about 0.15%).
- `input_sram.wdata[28]` capacitance changes from 0.0507075 pF to
  0.0508561 pF, an increase of 0.0001486 pF (about 0.29%).
- The nominal delta STA summary is unchanged: TNS -39.37 ns, WNS/setup
  -1.67 ns, and hold +0.21 ns.  As in the August 1 package, this is a
  regression comparison rather than full multi-corner signoff.

The prior two LVS errors were not a physical open or short.  Netgen inferred a
scalar `wmask0` pin from the powered Verilog instance while the SRAM LEF and
Magic-extracted SPICE expose the one-bit bus pin as `wmask0[0]`.  That created
an otherwise disconnected `proxywmask0[0]` net on the reference side.  The
source blackbox now declares `wmask0` as `[0:0]`, consistent with the PDK
behavioral model.  Because Netgen 1.5.255 still infers the pin directly from
the powered instance, the included LVS-only reference view spells that named
connection as `.\wmask0[0] (net472)` and removes the redundant one-element
concatenation.  No synthesized net, placement, route, DEF, ODB, GDS, or
extracted-layout connectivity changed.

The included GDS was generated from this verified DEF using the same
OpenLane/Magic settings as the previous package.  The zero-marker result is
the project's DEF-based Magic check (`MAGIC_DRC_USE_GDS=0`); SRAM-aware final
GDS signoff remains a separate tapeout task.

## Files

- `ntt_core_256_sram.def`: accepted post-ECO routed DEF
- `ntt_core_256_sram.odb`: OpenROAD database for GUI inspection
- `ntt_core_256_sram.gds`: post-ECO Magic streamout
- `ntt_core_256_sram.spef`: nominal post-ECO parasitics
- `ntt_core_256_sram.spice`: Magic-extracted connectivity netlist
- `magic_drc.rpt`: zero-marker Magic report
- `antenna_violators.rpt`: empty zero-violation antenna report
- `connectivity_regression.rpt`: extracted-netlist identity evidence
- `sta_delta.rpt`: nominal timing regression summary
- `lvs.log`: complete Netgen comparison log
- `lvs.json`: machine-readable Netgen result
- `lvs.rpt`: zero-error LVS summary and normalization rationale
- `metrics.csv`: concise metrics
- `SHA256SUMS.txt`: package checksums

The reproducible DEF transformation is
`../../sammy_eco/make_met3_min_area_eco.tcl`.
The reproducible LVS reference transformation and comparison are
`../../sammy_eco/make_lvs_reference.tcl` and
`../../sammy_eco/run_lvs_model_fix.tcl`.  The latter generates the 24 MB
LVS-only reference under the ignored `runs/` workspace, so the package does
not duplicate the otherwise identical accepted powered netlist.
