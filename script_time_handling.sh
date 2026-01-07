#!/bin/bash

# Configuration
TIMEOUT=15        # total timeout in seconds
INTERVAL=3        # wait time between retries
ELAPSED=0

# Command to execute (example)
COMMAND="ping -c 1 google.com"

while [ "$ELAPSED" -lt "$TIMEOUT" ]; do
    echo "Trying command... (Elapsed: ${ELAPSED}s)"

    if $COMMAND > /dev/null 2>&1; then
        echo "Command succeeded!"
        exit 0
    fi

    sleep "$INTERVAL"
    ELAPSED=$((ELAPSED + INTERVAL))
done

echo "Timeout reached after ${TIMEOUT}s. Command failed."
exit 1

