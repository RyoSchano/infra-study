 #!/bin/bash

    LOG_DIR="$HOME/work_logs"
    TODAY=$(date '+%Y-%m-%d')
    LOG_FILE="$LOG_DIR/${TODAY}.log"

    mkdir -p "$LOG_DIR"

    # { } でグループ化
    {
        echo "=============================="
        echo "Date: $(date '+%Y-%m-%d %H:%M:%S')"
        echo "User: $(whoami)"
        echo "Host: $(hostname)"
        echo "Task: $@"
        echo
    } | tee -a "$LOG_FILE"
    # 記録時に内容を表示
    echo "ログを記録しました: $LOG_FILE"