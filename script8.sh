#!/bin/bash

# Log files
DISK_LOG="disk_usage.log"
MEMORY_LOG="memory_usage.log"
CPU_LOG="cpu_load.log"

# Check if argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 {1|2|3|4|5|6}"
    echo "1: Disk Usage"
    echo "2: Memory Usage"
    echo "3: CPU Load"
    echo "4: System Uptime"
    echo "5: Logged-in Users"
    echo "6: Exit"
    exit 1
fi

CHOICE=$1
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

case $CHOICE in
    1)
        echo "[$TIMESTAMP] Disk Usage:"
        #echo "[$TIMESTAMP]" >> "$DISK_LOG"
        #df -h | tee -a "$DISK_LOG"
        df -h
        ;;
    2)
        echo "[$TIMESTAMP] Memory Usage:"
        #echo "[$TIMESTAMP]" >> "$MEMORY_LOG"
        #free -h | tee -a "$MEMORY_LOG"
        free -h
        ;;
    3)
        echo "[$TIMESTAMP] CPU Load:"
        #echo "[$TIMESTAMP]" >> "$CPU_LOG"
        #uptime | tee -a "$CPU_LOG"
        uptime
        ;;
    4)
        echo "[$TIMESTAMP] System Uptime:"
        uptime -p
        ;;
    5)
        echo "[$TIMESTAMP] Logged-in Users:"
        who
        ;;
    6)
        echo "[$TIMESTAMP] Exit selected. No action needed."
        ;;
    *)
        echo "[$TIMESTAMP] Invalid option!"
        echo "Valid options are 1–6."
        exit 1
        ;;
esac

