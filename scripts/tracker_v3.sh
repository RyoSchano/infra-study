#!/bin/bash

LOG_DIR="$HOME/tracker-logs"
TODAY=$(date '+%Y-%m-%d')
LOG_FILE="$LOG_DIR/${TODAY}-tracker.log"

arg_lower=$(echo "$1" | tr '[:upper:]' '[:lower:]')

mkdir -p "$LOG_DIR"

case "$arg_lower" in
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

    summary)
        if [ ! -f "$LOG_FILE" ]; then
            echo "No log file found for today."
            exit 1
        fi

        echo "===== Today's time summary ====="
        while read DATE TIME STATUS; do
            if [ "$STATUS" = "IN" ]; then
                START_TIME="$TIME"
            elif [ "$STATUS" = "OUT" ]; then
                END_TIME="$TIME"
                DURATION=$(date -d "$DATE $END_TIME" +%s) - $(date -d "$DATE $START_TIME" +%s)
                TOTAL=$((TOTAL + DURATION))
            fi
        done < "$LOG_FILE"
        
        HOURS=$((TOTAL / 3600))
        MINUTES=$(((TOTAL % 3600) / 60))
        echo "Total time worked today: ${HOURS}h ${MINUTES}m"
        ;;
    *)
    echo "Usage: $0 {in|out|show}"
    exit 1
    ;;
esac

