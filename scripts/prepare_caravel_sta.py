#!/usr/bin/env python3
"""Prepare upstream timing scripts for this Caravel-only project."""

import argparse
from pathlib import Path
import re


CARAVAN_EXCEPTIONS = (
    "caravan.v",
    "caravan_core-openlane.v",
    "caravan_core.v",
    "caravan_signal_routing.v",
)

PROJECT_EXCEPTIONS = (
    "gpio_defaults_block_0402.v",
    "gpio_defaults_block_0403.v",
    "gpio_defaults_block_0801.v",
    "gpio_defaults_block_1803.v",
    "ntt_engine_256.nl.v",
    "ntt_engine_256.v",
    "ntt_wb_bridge.nl.v",
    "ntt_wb_bridge.v",
    "user_proj_example.v",
)

MACROS = ("ntt_engine_256", "ntt_wb_bridge")

PHYSICAL_ARRAY = re.compile(
    r"(?ms)^[ \t]*sky130_(?:ef|fd)_sc_hd__(?:decap|fill)_[^ \t\n]+"
    r"[ \t]+[^ \t\n(\[]+\[[0-9]+:[0-9]+\][ \t]*\(.*?\)\);[ \t]*\n"
)


def patch_timing_common(path: Path, project_root: Path) -> None:
    text = path.read_text()
    missing_caravan = [
        name
        for name in CARAVAN_EXCEPTIONS
        if f"$caravel_root/verilog/gl/{name}" not in text
    ]
    if missing_caravan:
        anchor = '    "$caravel_root/verilog/gl/caravan-signoff.v" \\\n'
        if anchor not in text:
            raise SystemExit(f"cannot locate Caravan exclusion list in {path}")
        additions = "".join(
            f'    "$caravel_root/verilog/gl/{name}" \\\n'
            for name in missing_caravan
        )
        text = text.replace(anchor, anchor + additions, 1)

    # Prefer the compact post-PNR wrapper netlist when hardening generated it.
    # On a fresh checkout keep the committed wrapper netlist instead.
    project_exceptions = list(PROJECT_EXCEPTIONS)
    if (project_root / "verilog/gl/user_project_wrapper.nl.v").is_file():
        project_exceptions.append("user_project_wrapper.v")
    else:
        project_exceptions.append("user_project_wrapper.nl.v")

    # Rebuild our project exclusions on every invocation so switching between a
    # fresh checkout and a hardened workspace cannot leave a stale exclusion.
    all_project_exceptions = set(PROJECT_EXCEPTIONS) | {
        "user_project_wrapper.v",
        "user_project_wrapper.nl.v",
    }
    for name in all_project_exceptions:
        text = text.replace(f'    "$cup_root/verilog/gl/{name}" \\\n', "")

    missing_project = [
        name
        for name in project_exceptions
        if f"$cup_root/verilog/gl/{name}" not in text
    ]
    if missing_project:
        anchor = '    "$caravel_root/verilog/gl/__user_project_wrapper.v" \\\n'
        if anchor not in text:
            raise SystemExit(f"cannot locate project exclusion anchor in {path}")
        additions = "".join(
            f'    "$cup_root/verilog/gl/{name}" \\\n' for name in missing_project
        )
        text = text.replace(anchor, anchor + additions, 1)

    macro_lib_marker = "# Caravel3 hardened macro timing libraries"
    if macro_lib_marker not in text:
        anchor = 'set cup_root "[file normalize $::env(CUP_ROOT)]"\n'
        if anchor not in text:
            raise SystemExit(f"cannot locate project-root setup in {path}")
        additions = (
            f"\n{macro_lib_marker}\n"
            "lappend pdk(libs) \"$cup_root/lib/ntt_engine_256.lib\"\n"
            "lappend pdk(libs) \"$cup_root/lib/ntt_wb_bridge.lib\"\n"
        )
        text = text.replace(anchor, anchor + additions, 1)

    path.write_text(text)


def patch_spef_mapping(path: Path) -> None:
    """Do not annotate internal macro SPEFs onto Liberty black boxes."""
    lines = path.read_text().splitlines(keepends=True)
    lines = [
        line for line in lines if not any(macro in line for macro in MACROS)
    ]
    path.write_text("".join(lines))


def remove_physical_instance_arrays(project_root: Path) -> None:
    """Remove timing-inert filler arrays unsupported by this OpenSTA parser."""
    gl_dir = project_root / "caravel" / "verilog" / "gl"
    for name in ("caravel_core.v", "housekeeping.v", "housekeeping_alt.v"):
        path = gl_dir / name
        if not path.is_file():
            continue
        text = path.read_text()
        cleaned = PHYSICAL_ARRAY.sub("", text)
        if cleaned != text:
            path.write_text(cleaned)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--timing-common", required=True, type=Path)
    parser.add_argument("--spef-mapping", required=True, type=Path)
    parser.add_argument("--project-root", required=True, type=Path)
    args = parser.parse_args()

    patch_timing_common(args.timing_common, args.project_root)
    patch_spef_mapping(args.spef_mapping)
    remove_physical_instance_arrays(args.project_root)


if __name__ == "__main__":
    main()
