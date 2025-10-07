#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$ROOT_DIR"

python3 - <<'PY'
import pathlib
import re
import sys

root = pathlib.Path("docs")
pattern = re.compile(r"\[[^\]]+\]\(([^)#]+)\)")
errors = []

for md in root.rglob("*.md"):
    text = md.read_text()
    for match in pattern.finditer(text):
        target = match.group(1)
        if "://" in target or target.startswith("mailto:") or target.startswith("#"):
            continue
        path = (md.parent / target).resolve()
        if not path.exists():
            errors.append((md, target))

if errors:
    for md, target in errors:
        print(f"Broken link in {md}: {target}")
    sys.exit(1)
PY
