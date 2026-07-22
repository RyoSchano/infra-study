#!/bin/bash

# 固定の保存先を定義
ARCHIVE_DIR="$HOME/archives"
LOG_DIR="$HOME/backup-logs"

# 引数の数をチェック
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source>" >&2
    exit 1
fi

# 引数からソースを取得
SOURCE="$1"

if [ ! -e "$SOURCE" ]; then
    echo "Error: Source '$SOURCE' does not exist." >&2
    exit 1
fi

# ディレクトリが存在しない場合は作成
if ! mkdir -p "$ARCHIVE_DIR"; then
    echo "Error: Failed to create archive directories." >&2
    exit 1
fi
if ! mkdir -p "$LOG_DIR"; then
    echo "Error: Failed to create log directories." >&2
    exit 1
fi

# 日付と時刻を取得して、アーカイブファイル名とログファイル名を作成
SOURCE_NAME=$(basename "$SOURCE")
DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H-%M-%S')

ARCHIVE_FILE="${ARCHIVE_DIR}/${SOURCE_NAME}_${DATE}_${TIME}.tar.gz"
LOG_FILE="$LOG_DIR/$DATE.log"

if tar -czf "$ARCHIVE_FILE" -- "$SOURCE"; then
    echo "Backup completed: $ARCHIVE_FILE" | tee -a "$LOG_FILE"
else
    echo "Error: Failed to create archive." | tee -a "$LOG_FILE" >&2
    rm -f -- "$ARCHIVE_FILE"
    exit 1
fi

