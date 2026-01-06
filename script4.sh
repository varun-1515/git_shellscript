#!/bin/bash

while true; do
    echo "=============================="
    echo "   System Monitoring Menu"
    echo "=============================="
    echo "1. Check Disk Usage"
    echo "2. Check Memory Usage"
    echo "3. Check CPU Load"
    echo "4. Check System Uptime"
    echo "5. Exit"
    echo "=============================="

    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            echo "Disk Usage:"
            df -h
            ;;
        2)
            echo "Memory Usage:"
            free -h
            ;;
        3)
            echo "CPU Load:"
            uptime
            ;;
        4)
            echo "System Uptime:"
            uptime -p
            ;;
        5)
            echo "Exiting program..."
            break
            ;;
        *)
            echo "Invalid choice! Please select a valid option."
            ;;
    esac

    echo
    read -p "Press Enter to return to the menu..."
    clear
done

