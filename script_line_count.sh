#!/bin/bash

# Initialize the counter to 0
count=0

# Define the file path
file="test_file.txt"

# Check if the file exists before starting
if [[ -f "$file" ]]; then
    # Use a while loop to read each line
    while read -r line; do
        # Increment the counter by 1 for each line read
        ((count++))
    done < "$file"

    # Display the final line count
    echo "Total number of lines in $file: $count"
else
    echo "Error: File $file not found."
fi

