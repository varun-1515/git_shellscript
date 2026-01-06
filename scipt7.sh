#!/bin/bash

# Log files
DISK_LOG="disk_usage.log"
MEMORY_LOG="memory_usage.log"
CPU_LOG="cpu_load.log"

while true; do
    echo "=============================="
    echo "   System Monitoring Menu"
    echo "=============================="
    echo "1. Check Disk Usage"
    echo "2. Check Memory Usage"
    echo "3. Check CPU Load"
    echo "4. Check System Uptime"
    echo "5. Show Logged-in Users"
    echo "6. Exit"
    echo "=============================="

    read -p "Enter your choice [1-6]: " choice
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

    case $choice in
        1)
            echo "[$TIMESTAMP] Disk Usage:"
            echo "[$TIMESTAMP]" >> "$DISK_LOG"
            df -h | tee -a "$DISK_LOG"
            ;;
        2)
            echo "[$TIMESTAMP] Memory Usage:"
            echo "[$TIMESTAMP]" >> "$MEMORY_LOG"
            free -h | tee -a "$MEMORY_LOG"
            ;;
        3)
            echo "[$TIMESTAMP] CPU Load:"
            echo "[$TIMESTAMP]" >> "$CPU_LOG"
            uptime | tee -a "$CPU_LOG"
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
            echo "[$TIMESTAMP] Exiting program..."
            break
            ;;
        *)
            echo "[$TIMESTAMP] Invalid choice! Please select a valid option."
            ;;
    esac

    echo
    read -p "Press Enter to return to the menu..."
    clear
done

