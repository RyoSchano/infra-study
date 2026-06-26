# worklog

## やりたいこと
- 作業内容を引数にログをとるスクリプト(自作コマンド)をつくる

## 実行コマンド
```
    #!/bin/bash

    LOG_DIR="$HOME/work-logs"
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
``` 
- mv ~/scripts/worklog.sh ~/bin/worklog
- chmod +x ~/bin/worklog

## 学んだこと
- $HOME は環境変数
- $( ) コマンド置換 ()内はコマンドを実行して文字列で使う
- ${ } 変数展開 $TODAY と同じ 文字列間の展開に便利
- rm -r ファイルありディレクトリ削除
- 位置パラメータ $1 の場合、作業をスペースで区切って複数入力する際に""が必要になる
- $* は引数を一つの文字列として保持 $TASK="$*" で使ってもOK
- { } でグループ化 しないと echo ~ >> "$LOG_FILE" が全行必要になる
- mkdir -p (parents) はすでにフォルダがあってもエラーでとまらない
- すでに存在するフォルダを作ると File exists エラーになる
- sudo dpkg-reconfirure console-setup で文字サイズ変更

### vim
- gUiw 小文字を大文字に変換
    - gU (選択範囲を大文字化)
    - iw (カーソル上の単語選択)
- ~ カーソル位置の一文字を大小切り替える
## つまずいたこと
- 記録時に内容をログファイルまで確認しにいくのが大変だった
    - 記録時に内容を表示するように再設計して解決
    - DRY原則に基づき tee を使って重複コードを削減した

## 次回
- スクリプト作成
    - 作業トラッカー
    - 監視ログ

## 課題
- vim 操作
- 英語力
- CLI 操作

