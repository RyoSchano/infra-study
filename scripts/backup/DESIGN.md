# backup.sh

## やりたいこと
- 指定したディレクトリをアーカイブファイルで保存してログを記録する

## 処理
1. バックアップ元を圧縮する
2. アーカイブフォルダに保存する
3. ログを日時付きで記録する

## 設計
```
- 使い方  
    → backup.sh <SOURCE_DIR> [BACKUP_ROOT]  
    → 引数なしは使い方を表示

変数
├ SOURCE_DIR    ← バックアップ元
├ BACKUP_FILE   ← 作成するアーカイブ名
├ BACKUP_ROOT   ← 保存先 (デフォルト: $HOME/backup)
├ ARCHIVE_DIR   ← $BACKUP_ROOT/archive
├ LOG_FILE      ← ログファイル
├ LOG_DIR       ← $BACKUP_ROOT/log
└ DATE          ← 日時

引数
├ $1 → SOURCE_DIR
└ $2 → BACKUP_ROOT (初期設定 → $HOME/backup)
```
## エラー処理


## 今後追加したい機能