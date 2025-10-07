#!/usr/bin/env bash
set -euo pipefail

# Simple Markdown link checker for relative paths inside the repository.
# - Skips external links (http/https/mailto/tel).
# - Verifies that linked Markdown or asset files exist.

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"

mapfile -d '' FILES < <(find "$ROOT" \( -name '*.md' -o -name 'README.md' \) -print0)

STATUS=0

for FILE in "${FILES[@]}"; do
  DIR="$(dirname "$FILE")"
  while IFS= read -r MATCH; do
    URL="${MATCH#*(}"
    URL="${URL%)}"

    case "$URL" in
      http://*|https://*|mailto:*|tel:*) continue ;;
      \#*) continue ;; # Pure anchor links are fine.
    esac

    TARGET_PATH="${URL%%#*}" # Strip any anchor.
    [[ -z "$TARGET_PATH" ]] && continue

    if [[ "$TARGET_PATH" = /* ]]; then
      TARGET="$ROOT$TARGET_PATH"
    else
      TARGET="$DIR/$TARGET_PATH"
    fi

    if [[ ! -e "$TARGET" ]]; then
      RELFILE="${FILE#$ROOT/}"
      echo "BROKEN LINK: $RELFILE -> $URL"
      STATUS=1
    fi
  done < <(grep -oE '\[[^]]+\]\([^)]+\)' "$FILE" | grep -vE '\]\((http|https|mailto:|tel:)')
done

if [[ $STATUS -eq 0 ]]; then
  echo "All Markdown links resolve."
fi

exit $STATUS
