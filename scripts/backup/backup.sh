#!/bin/bash

SOURCE="$1"
SOURCE_NAME=$(basename "$SOURCE")
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')
ARCHIVE_DIR="$HOME/archives"
ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_DIR="$HOME/backup-logs"
LOG_FILE="$LOG_DIR/${DATE}-.log"


