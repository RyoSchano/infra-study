#!/bin/bash

ARCHIVE_DIR="$HOME/archives"
LOG_DIR="$HOME/backup-logs"

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source>"
    exit 1
fi

SOURCE="$1"

SOURCE_NAME=$(basename "$SOURCE")
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')

ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_FILE="$LOG_DIR/$DATE.log"


