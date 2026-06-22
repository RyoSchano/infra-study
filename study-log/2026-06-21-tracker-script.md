# title

## やりたいこと
-

## 実行コマンド
```
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
```

## 学んだこと
- date
    - \+ は引数がフォーマットであることを示すためにある
    - +%F → %Y-%m-%d
    - +%T → %H:%M:%S
    - +%s → Unix Time
        - 1970-01-01 00:00:00 UTC からの経過数秒を返す
        - (終了秒 - 開始秒) で活動時間が計算できる


## つまずいたこと
-

## 次回
-

## 課題
-
    