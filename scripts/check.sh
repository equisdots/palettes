#!/usr/bin/env bash
# Local checks for the palette repo (no CI):
#   - Every palette file against schema.json.
#   - index.json consistency (exactly the existing slugs, categories/paths).
#
# Usage: scripts/check.sh
set -u
cd "$(dirname "$0")/.." || exit 1

exec python3 tools/validate_palettes.py "$@"
