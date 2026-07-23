#!/bin/bash
# 固定の保存先を定義 Set the fixed destinations
ARCHIVE_DIR="$HOME/archives"
LOG_DIR="$HOME/backup-logs"
# 引数の数をチェック Check the number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source>" >&2
    exit 1
fi

# 引数からソースを取得 Get the source from the argument
SOURCE="$1"
# ソースが存在するか確認 Check whether the source exists
if [ ! -e "$SOURCE" ]; then
    echo "Error: Source '$SOURCE' does not exist." >&2
    exit 1
fi
# ディレクトリが存在しない場合は作成 Create the directories if they do not exist
if ! mkdir -p "$ARCHIVE_DIR"; then
    echo "Error: Failed to create archive directory." >&2
    exit 1
fi
if ! mkdir -p "$LOG_DIR"; then
    echo "Error: Failed to create log directory." >&2
    exit 1
fi

# Get the source name
SOURCE_NAME=$(basename "$SOURCE")
# Get the current date and time
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')
# Set the archive file path and log file path 
ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_FILE="$LOG_DIR/$DATE.log"
# Create a compressed archive and log the backup result
if tar -czf "$ARCHIVE_FILE" -- "$SOURCE"; then
    echo "Backup completed: $ARCHIVE_FILE" | tee -a "$LOG_FILE"
else
    echo "Error: Failed to create archive." | tee -a "$LOG_FILE" >&2
    rm -f -- "$ARCHIVE_FILE"
    exit 1
fi

