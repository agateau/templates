#!/bin/sh -e
TEMP_DIR="$(mktemp --tmpdir -d "myscript-XXXXXX")"

cleanup() {
    echo "Deleting $TEMP_DIR"
    rm -rf $TEMP_DIR
}

trap cleanup INT TERM EXIT

echo "Creating $TEMP_DIR/test"
touch $TEMP_DIR/test
ls $TEMP_DIR
echo "Press Enter or interrupt me with CTRL+C"
read dummy
