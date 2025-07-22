#!/bin/bash

INPUT_FILE="/etc/passwd"

# Check if the file exists
if [[ ! -f "$INPUT_FILE" ]]; then
    echo "File '$INPUT_FILE' not found."
    exit 1
fi

echo "Users with /bin/bash shell:"
awk -F: '$7 == "/bin/bash" { print $1 }' "$INPUT_FILE"
