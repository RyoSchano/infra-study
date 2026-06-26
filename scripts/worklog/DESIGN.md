# worklog.sh

## 1. 目的・背景
- 作業内容をログファイルに保存して管理する

## 2. 使い方・仕様（インタフェース）
```
実行例: worklog.sh <作業内容>
*引数・入力
├ TASK
├ 
└ 

*保存・出力
├ ログ保存場所: $HOME/work-logs/YYYY-MM-DD.log
└ ログ形式: 
    Date: YYYY-MM-DD HH:MM:SS
    User: <username>
    Host: <hostname>
    Task: <task>
```
## 3. 処理フロー（メインロジック）
【大枠の処理の流れ】
1. 保存先ディレクトリなければ作成
2. ログをファイルに出力して内容を標準出力

## 4. 内部設計（使用する値）
```
*主要変数・定数
├ LOG_DIR
├ TODAY
└ LOG_FILE

```
## 5. エラー想定・例外処理
【発生しそうなエラーとその時の挙動】

## 今後の拡張予定