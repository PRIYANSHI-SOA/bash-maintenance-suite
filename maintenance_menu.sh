#!/bin/bash
# Name: Priyanshi Banik
# Reg: 2241002025
# Batch: 4
# Branch: CSE
# Script: Maintenance Menu

while true; do
    echo "=============================="
    echo "  System Maintenance Suite"
    echo "=============================="
    echo "1. Backup System"
    echo "2. Update and Clean System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) bash backup.sh ;;
        2) bash system_update.sh ;;
        3) bash log_monitor.sh ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Try again." ;;
    esac
done
