# title

## 目的
GitHubをVSCodeと連携させて管理する。

## 実施内容
- GitHub Desktop をインストール
- フォルダをインポート
- .gitignore を設定

## 学んだこと
- Commit
- Push
- date
    - \+ は引数がフォーマットであることを示すためにある
    - +%F → %Y-%m-%d
    - +%T → %H:%M:%S
    - +%s → Unix Time
        - 1970-01-01 00:00:00 UTC からの経過数秒を返す
        - (終了秒 - 開始秒) で活動時間が計算できる
    
## つまずいたこと
- コミットメッセージの入力方法でDescriptionだけ入力してしまい反映されなかった
    #### 解決方法
    - History を確認 → GitHub で自動的にタイトルを生成していた
    - Summary（必須）
    - Description（任意）

## 次回
- 

## 課題
- 

