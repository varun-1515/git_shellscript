#!/bin/bash

filename="test_file.txt"

# Check if file exists before reading
if [[ -f "$filename" ]]; then
    while IFS= read -r line; do
        echo "$line"
    done < "$filename"
else
    echo "File not found."
fi

