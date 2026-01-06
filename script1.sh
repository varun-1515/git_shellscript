#!/bin/bash

while true; do
    echo "----------------------------"
    echo " System Monitoring Menu"
    echo "----------------------------"
    echo "1. Check Disk Usage"
    echo "2. Check Memory Usage"
    echo "3. Check CPU Load"
    echo "4. Exit"
    echo "----------------------------"

    read -p "Enter your choice [1-4]: " choice

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
            echo "Exiting script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac

    echo
    read -p "Press Enter to continue..." temp
    clear
done

