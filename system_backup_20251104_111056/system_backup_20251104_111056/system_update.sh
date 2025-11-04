#!/bin/bash
# Name: Priyanshi Banik
# Reg: 2241002025
# Batch: 4
# Branch: CSE
# Script: System Update and Cleanup

echo "Updating and cleaning the system..."
sudo apt update -y && sudo apt upgrade -y
sudo apt autoremove -y && sudo apt autoclean -y

if [ $? -eq 0 ]; then
    echo "System update and cleanup completed."
else
    echo "Error during update or cleanup."
fi
