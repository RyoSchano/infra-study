# study-log

## 作業内容
- `backup.sh`の処理ごとに簡単な英語コメントを追加
- `date`コマンドのフォーマット指定を確認
- ChatGPTとGitHubを連携して、スクリプト全体をレビュー
- 

## 学んだこと
- `date`の`+`は、フォーマット指定の先頭に1つ付ける
- `%F`は`%Y-%m-%d`の省略形
- `%T`は`%H:%M:%S`の省略形
- `whether`は「～かどうか」という意味
- 英語コメントは、処理内容を表す動詞から始めると分かりやすい
  - `Check`: 確認する
  - `Set`: 設定する
  - `Create`: 作成する
  - `Log`: ログに記録する
- `destination`は保存先

## つまずいたこと
- 実行環境では、日本語入力を設定していないため、コメントを英語で記述する必要があったが、英語表現の知識が不足しており、処理内容を自力で英文にできなかった
  - 原因  
    英単語や文法だけでなく、シェルスクリプトで使われる短いコメントの書き方に慣れていなかった
  - 解決方法  
    処理内容を日本語で整理してから、`Check``Set``Create`などの動詞で始まる短い英文へ置き換えた
  - 例
    - Check whether the source exists
    - Set the fixed destinations
    - Create a compressed archive and log the result

## 課題
- 英語を積極的に使う

