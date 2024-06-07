#!/bin/bash
# Tester script for assignment 4

set -e
set -u

OUTPUT_FILE=/tmp/assignment4-result.txt

# Check if the output file exists, and remove it if it does
if [ -e "$OUTPUT_FILE" ]; then
    rm -f "$OUTPUT_FILE"
fi

# Run the finder script and capture the output
/usr/bin/finder.sh /tmp/aeld-data AELD_IS_FUN > "$OUTPUT_FILE"

# Verify that the output is as expected
EXPECTED_OUTPUT="The number of files are 10 and the number of matching lines are 10"
ACTUAL_OUTPUT=$(cat "$OUTPUT_FILE")

if [ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "success"
else
    echo "error"
fi
