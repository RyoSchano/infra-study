#!/bin/bash

LOG_DIR="$HOME/work_logs"
TODAY=$(date '+%Y-%m-%d')
LOG_FILE="$LOG_DIR/${TODAY}_tracker.log"

mkdir -p "$LOG_DIR"

case "$1" in
    in)
        # Check if the log file exists
        if [ -f "$LOG_FILE" ]; then
            LAST_STATUS=$(awk 'END {print $NF}' "$LOG_FILE")
            # Check if the last status is "IN"
            if [ "$LAST_STATUS" = "IN" ]; then
                echo "You are already logged in."
                exit 1
            fi
        fi

    echo "$(date '+%Y-%m-%d %H:%M:%S') IN" >> "$LOG_FILE"
    echo "Start time recorded."
    ;;
    
    out)
        # Check if the log file exists
        if [ ! -f "$LOG_FILE" ]; then
            echo "No log file found for today. Please log in first."
            exit 1
        fi
        LAST_STATUS=$(awk 'END {print $NF}' "$LOG_FILE")
        # Check if the last status is "OUT"
        if [ "$LAST_STATUS" = "OUT" ]; then
            echo "You are already logged out."
            exit 1
        fi
    
    echo "$(date '+%Y-%m-%d %H:%M:%S') OUT" >> "$LOG_FILE"
    echo "End time recorded."
    ;;

    show)
        if [ ! -f "$LOG_FILE" ]; then
            echo "No log file found for today."
            exit 1
        fi

    echo "===== Today's time tracker ====="
    cat "$LOG_FILE"
    ;;

    *)
    echo "Usage: $0 {in|out|show}"
    exit 1
    ;;
esac

LAST_STATUS="$(awk 'END {print $NF}' "$LOG_FILE")"

