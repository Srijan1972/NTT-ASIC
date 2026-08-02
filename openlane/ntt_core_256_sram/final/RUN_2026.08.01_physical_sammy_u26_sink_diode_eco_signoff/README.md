# Sammy u[26] Sink-Side Antenna ECO

This package fixes the last OpenROAD antenna violation in the committed ECO3
physical layout. The baseline violation was `_5459_/A1` on
`butterfly_inst.u[26]`, met1, with a partial ratio of 1299.67 against a required
ratio of 400. The packaged DEF reports zero antenna-violating nets and zero
antenna-violating pins.

## Physical change

The existing `ANTENNA__5459__A1` diode is moved from
`(637.560, 524.960) FS` to `(638.480, 530.400) FS`, immediately to the right of
the `_5459_` sink. A met1 stub on `y=531.930` connects `_5459_/A1` at
`x=636.870` directly to a legal access point inside the diode's continuous li1
pin at `x=638.710`.

The stub stays below the unrelated met1 routes at `y=532.270`; the vertical
routes it crosses are on met2. Magic extraction confirms that `_5459_/A1` and
the diode remain on `butterfly_inst.u[26]`, while `_5459_/A0` remains on
`butterfly_inst.add_inst.a[26]`.

Placement density is preserved with an equal-width cell cycle. The original
transforms are retained:

- `ECO3_FILLER_0_185_1341`: `(637.100, 524.960) FS` to
  `(639.400, 530.400) FS`
- `PHY_1335`: `(638.480, 530.400) S` to `(20.240, 530.400) S`
- `PHY_1334`: `(20.240, 530.400) FS` to `(637.100, 524.960) FS`

## Verification

- OpenROAD antenna: 0 violating nets, 0 violating pins.
- Magic DRC: 4 markers, byte-identical to the ECO3 baseline. All four are the
  pre-existing met3 minimum-area markers near the lower boundary; the ECO adds
  no marker.
- Netgen LVS: 2 total errors, identical to the ECO3 baseline: net-count
  difference 1 and unmatched nets 1. There are no device, pin, or property
  mismatches introduced by this ECO.
- OpenRCX: `butterfly_inst.u[26]` capacitance changes from 0.0305482 pF to
  0.0307357 pF, an increase of 0.0001875 pF (about 0.61%).
- Apples-to-apples nominal OpenSTA summary: unchanged at TNS -39.37 ns, WNS
  -1.67 ns, setup -1.67 ns, and hold +0.21 ns. This lightweight comparison is
  a delta check; the committed ECO3 package remains the authoritative full
  multi-corner signoff reference.

The generated GDS comes from the verified DEF. Magic DRC and LVS were performed
from that DEF, matching the project's committed verification method. The
archived detailed-routing guide needed to initialize standalone OpenROAD DRT
checking was not present, so no new standalone `detailed_route.drc` is claimed;
the ECO's physical regression evidence is the byte-identical Magic DRC report.

Reproducible ECO source and analysis scripts are in `../../sammy_eco/`.
