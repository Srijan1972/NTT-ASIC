#!/usr/bin/env python3
"""Prepare upstream timing scripts for this Caravel-only project."""

import argparse
from pathlib import Path


CARAVAN_EXCEPTIONS = (
    "caravan.v",
    "caravan_core-openlane.v",
    "caravan_core.v",
    "caravan_signal_routing.v",
)

MACROS = ("ntt_engine_256", "ntt_wb_bridge")


def patch_timing_common(path: Path) -> None:
    text = path.read_text()
    missing = [
        name
        for name in CARAVAN_EXCEPTIONS
        if f"$caravel_root/verilog/gl/{name}" not in text
    ]
    if not missing:
        return

    anchor = '    "$caravel_root/verilog/gl/caravan-signoff.v" \\\n'
    if anchor not in text:
        raise SystemExit(f"cannot locate Caravan exclusion list in {path}")

    additions = "".join(
        f'    "$caravel_root/verilog/gl/{name}" \\\n' for name in missing
    )
    path.write_text(text.replace(anchor, anchor + additions, 1))


def patch_spef_mapping(path: Path, project_root: Path) -> None:
    text = path.read_text()
    spef_dir = project_root / "spef" / "multicorner"
    for macro in MACROS:
        if not all(
            (spef_dir / f"{macro}.{corner}.spef").is_file()
            for corner in ("min", "nom", "max")
        ):
            continue
        old = f"$::env(PROJECT_ROOT)/signoff/not-found/{macro}."
        new = f"$::env(PROJECT_ROOT)/spef/multicorner/{macro}."
        text = text.replace(old, new)
    path.write_text(text)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--timing-common", required=True, type=Path)
    parser.add_argument("--spef-mapping", required=True, type=Path)
    parser.add_argument("--project-root", required=True, type=Path)
    args = parser.parse_args()

    patch_timing_common(args.timing_common)
    patch_spef_mapping(args.spef_mapping, args.project_root)


if __name__ == "__main__":
    main()
