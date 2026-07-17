#!/bin/bash

ARCHIVE_DIR="$HOME/archives"
LOG_DIR="$HOME/backup-logs"

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source>" >&2
    exit 1
fi

SOURCE="$1"

if [ ! -e "$SOURCE" ]; then
    echo "Error: Source '$SOURCE' does not exist." >&2
    exit 1
fi
if ! mkdir -p "$ARCHIVE_DIR"; then
    echo "Error: Failed to create archive directories." >&2
    exit 1
fi
if ! mkdir -p "$LOG_DIR"; then
    echo "Error: Failed to create log directories." >&2
    exit 1
fi

SOURCE_NAME=$(basename "$SOURCE")
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')

ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_FILE="$LOG_DIR/$DATE.log"


