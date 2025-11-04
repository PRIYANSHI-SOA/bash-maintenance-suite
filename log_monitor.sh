#!/bin/bash
echo "Monitoring logs for keyword: error"
sleep 1

# Detect platform
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "Detected Windows environment (Git Bash)."
    LOG_FILE="./system_logs.txt"

    # Simulate log generation
    echo "[INFO] System running smoothly." > "$LOG_FILE"
    echo "[WARNING] Minor cleanup required." >> "$LOG_FILE"
    echo "[ERROR] Temporary file missing, skipping cleanup." >> "$LOG_FILE"
    
    echo "Displaying simulated log entries..."
    echo "-----------------------------------"
    cat "$LOG_FILE"
else
    LOG_FILE="/var/log/syslog"
    if [[ -f "$LOG_FILE" ]]; then
        grep "error" "$LOG_FILE"
    else
        echo "Error log file not found: $LOG_FILE"
    fi
fi

echo "-----------------------------------"
echo "Log monitoring completed successfully!"
