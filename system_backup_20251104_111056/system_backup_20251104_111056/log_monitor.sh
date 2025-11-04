#!/bin/bash
# Name: Priyanshi Banik
# Reg: 2241002025
# Batch: 4
# Branch: CSE
# Script: Log Monitoring

LOG_FILE="/var/log/syslog"
KEYWORD="error"
OUTPUT_FILE="/tmp/log_alerts.txt"

echo "Monitoring logs for keyword: $KEYWORD"
grep -i "$KEYWORD" "$LOG_FILE" > "$OUTPUT_FILE"

if [ -s "$OUTPUT_FILE" ]; then
    echo "Alerts found! Check $OUTPUT_FILE"
else
    echo "No alerts found."
fi
