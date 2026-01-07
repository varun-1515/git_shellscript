#!/bin/bash

file="test_file.txt"

while read -r line; do
    # Skip if line is empty (length is zero)
    [ -z "$line" ] && continue

    echo "Processing: $line"
done < $file

