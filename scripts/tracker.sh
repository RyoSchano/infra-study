#!/bin/bash

LOG_DIR="$HOME/work_logs"
TODAY=$(date '+%Y-%m-%d')
LOG_FILE="$LOG_DIR/${TODAY}_tracker.log"

mkdir -p "$LOG_DIR"

case "$1" in
  in)
    echo "$(date '+%Y-%m-%d %H:%M:%S') IN" >> "$LOG_FILE"
    echo "Start time recorded"
    ;;

  out)
    echo "$(date '+%Y-%m-%d %H:%M:%S') OUT" >> "$LOG_FILE"
    echo "End time recorded"
    ;;

  show)
    echo "===== Today's time tracker ====="
    cat "$LOG_FILE"
    ;;

  *)
    echo "Usage: $0 {in|out|show}"
    exit 1
    ;;
esac