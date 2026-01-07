#!/bin/bash

MAX_RETRIES=5
RETRY_COUNT=0
SLEEP_TIME=2

# Command to retry (example: ping)
COMMAND="ping -c 1 google.com"

while [ "$RETRY_COUNT" -lt "$MAX_RETRIES" ]; do
    echo "Attempt $((RETRY_COUNT + 1)) of $MAX_RETRIES..."

    if $COMMAND > /dev/null 2>&1; then
        echo "Command succeeded!"
        exit 0
    else
        echo "Command failed. Retrying in $SLEEP_TIME seconds..."
        ((RETRY_COUNT++))
        sleep "$SLEEP_TIME"
    fi
done

echo "Command failed after $MAX_RETRIES attempts."
exit 1

