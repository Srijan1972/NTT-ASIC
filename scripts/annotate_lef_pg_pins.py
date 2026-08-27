#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 Srijan1972
# SPDX-License-Identifier: Apache-2.0

"""Ensure hardened macro LEFs classify their power and ground boundary pins."""

import argparse
import re
from pathlib import Path


def annotate_pin(lines: list[str], pin_name: str, use: str) -> None:
    pin_pattern = re.compile(rf"^(\s*)PIN\s+{re.escape(pin_name)}\s*$")
    end_pattern = re.compile(rf"^\s*END\s+{re.escape(pin_name)}\s*$")

    starts = [index for index, line in enumerate(lines) if pin_pattern.match(line)]
    if len(starts) != 1:
        raise ValueError(
            f"expected exactly one PIN {pin_name} block, found {len(starts)}"
        )

    start = starts[0]
    end = next(
        (index for index in range(start + 1, len(lines)) if end_pattern.match(lines[index])),
        None,
    )
    if end is None:
        raise ValueError(f"PIN {pin_name} block has no matching END")

    use_pattern = re.compile(r"^(\s*)USE\s+\S+\s*;\s*$")
    use_lines = [
        index
        for index in range(start + 1, end)
        if use_pattern.match(lines[index])
    ]
    if use_lines:
        first = use_lines[0]
        indent = use_pattern.match(lines[first]).group(1)
        lines[first] = f"{indent}USE {use} ;\n"
        for index in reversed(use_lines[1:]):
            del lines[index]
        return

    direction_pattern = re.compile(r"^(\s*)DIRECTION\s+INOUT\s*;\s*$")
    for index in range(start + 1, end):
        match = direction_pattern.match(lines[index])
        if match:
            lines.insert(index + 1, f"{match.group(1)}USE {use} ;\n")
            return

    raise ValueError(f"PIN {pin_name} block has no INOUT direction")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("lef", type=Path)
    parser.add_argument("--power", required=True)
    parser.add_argument("--ground", required=True)
    args = parser.parse_args()

    lines = args.lef.read_text().splitlines(keepends=True)
    annotate_pin(lines, args.power, "POWER")
    annotate_pin(lines, args.ground, "GROUND")
    args.lef.write_text("".join(lines))

    print(
        f"Annotated {args.lef}: {args.power}=POWER, {args.ground}=GROUND"
    )


if __name__ == "__main__":
    main()
