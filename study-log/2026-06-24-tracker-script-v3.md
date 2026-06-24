# tracker_v3.sh

## やりたいこと
#### tracker.sh にsummary 機能を追加する  
summary 機能追加を自力で行う

## 設計
1. case に summary を追加
2. 今日のログファイルが存在するか確認
3. in と out の時刻を取り出す  
    1行読む
    ↓
    in なら開始時刻を覚える
    ↓
    次の行読む
    ↓
    out なら差分計算
    ↓
    total に加算
    ↓
    次の行読む

4. 秒に変換して差分を計算
5. 合計秒数を h/m 表示する

## つまずいたこと
- summary 実行時に HOURS が異常値を表示した
    - 原因  
    OUT_TIME の代入処理にタイプミスがあり、
    UNIX時刻の差分計算が正しく行われていなかった
    - 解決方法  
    echoで IN_TIME OUT_TIME の数値を確認
    OUT_TIME が代入できていなかったので代入式を修正

## 学んだこと
- tail -n 1 "$LOG_FILE"
    - -n 指定行表示
    - $LOG_FILEに""つけるのは、ファイル名が my file みたいな場合があるため
- cut -d " " -f 3
    - -d (--delimiter) 区切りを指定
    - -f (--fields) 必要な項目を項目数で指定
- 原因究明の切り分け意識
- 
## 次回
- 基礎コマンドを使ったbashスクリプトの作成

## 課題
- 基礎コマンドを熟知する
