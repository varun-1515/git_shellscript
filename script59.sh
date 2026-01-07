#!/bin/bash

LOG_FILE="loop_output.log"

count=1

while [ "$count" -le 5 ]; do
    MESSAGE="Iteration $count at $(date '+%Y-%m-%d %H:%M:%S')"

    # Print to screen
    echo "$MESSAGE"

    # Append to log file
    echo "$MESSAGE" >> "$LOG_FILE"

    ((count++))
    sleep 1
done

echo "Loop execution completed." | tee -a "$LOG_FILE"

