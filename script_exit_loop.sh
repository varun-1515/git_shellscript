#!/bin/bash

count=1

while true; do
    echo "Count: $count"

    if [ "$count" -eq 5 ]; then
        echo "Condition met. Exiting loop."
        break
    fi

    ((count++))
    sleep 1
done

