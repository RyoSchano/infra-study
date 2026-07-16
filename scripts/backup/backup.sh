#!/bin/bash

SOURCE="$1"
ARCHIVE_DIR="$HOME/archives"
LOG_DIR="$HOME/backup-logs"

SOURCE_NAME=$(basename "$SOURCE")
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')

ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_FILE="$LOG_DIR/$DATE.log"


