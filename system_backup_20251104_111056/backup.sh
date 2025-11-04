#!/bin/bash
# =======================================
# Name: Priyanshi Banik
# Reg: 2241002025
# Batch: 4
# Branch: CSE
# Script: Automated Backup (Windows Safe)
# =======================================


BACKUP_DIR="$(pwd)/system_backup_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$BACKUP_DIR" 2>/dev/null

echo "Starting backup..."
if [ -d "$BACKUP_DIR" ]; then
    
    cp -r . "$BACKUP_DIR" 2>/dev/null
    echo "Backup completed successfully!"
    echo "Backup stored at: $BACKUP_DIR"
else
    echo "Backup failed! Check folder permissions."
fi
