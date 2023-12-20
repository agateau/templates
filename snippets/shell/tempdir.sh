#!/usr/bin/env bash
set -euo pipefail

PROGNAME=$(basename "$0")

cleanup() {
    if [ -n "${TEMP_DIR:-}" ] ; then
        echo "Deleting $TEMP_DIR"
        rm -rf "$TEMP_DIR"
    fi
}

create_temp_dir() {
    TEMP_DIR="$(mktemp --tmpdir --directory "$PROGNAME-XXXXXX")"
    trap cleanup INT TERM EXIT
}

create_temp_dir

echo "Creating $TEMP_DIR/test"
touch "$TEMP_DIR/test"
ls "$TEMP_DIR"
echo "Press Enter or interrupt me with CTRL+C"
read dummy
