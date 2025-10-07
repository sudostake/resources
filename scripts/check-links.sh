#!/usr/bin/env bash
set -euo pipefail

# Simple Markdown link checker for relative paths inside the repository.
# - Skips external links (http/https/mailto/tel).
# - Verifies that linked Markdown or asset files exist.

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"

STATUS=0
LINK_REGEX='\[[^]]+\]\([^)]+\)'

while IFS=: read -r FILE LINE MATCH; do
  [[ -z "$FILE" || -z "$MATCH" ]] && continue

  URL="${MATCH#*(}"
  URL="${URL%)}"

  case "$URL" in
    http://*|https://*|mailto:*|tel:*) continue ;;
    \#*) continue ;;
  esac

  TARGET_PATH="${URL%%#*}"
  [[ -z "$TARGET_PATH" ]] && continue

  if [[ "$TARGET_PATH" = /* ]]; then
    TARGET="$ROOT$TARGET_PATH"
  else
    DIR="$(dirname "$FILE")"
    TARGET="$DIR/$TARGET_PATH"
  fi

  if [[ ! -e "$TARGET" ]]; then
    RELFILE="${FILE#$ROOT/}"
    echo "BROKEN LINK: $RELFILE:$LINE -> $URL"
    STATUS=1
  fi
done < <(grep -R --exclude-dir={.git,node_modules,vendor,dist,build} -n -oE "$LINK_REGEX" --include='*.md' "$ROOT" || true)

if [[ $STATUS -eq 0 ]]; then
  echo "All Markdown links resolve."
fi

exit $STATUS
