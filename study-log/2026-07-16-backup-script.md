# study-log

## 作業内容
- backup.shのコーディング

## 学んだこと
- 演算子
```
-eq equal 等しい
-ne not equal 等しくない
-lt less than より小さい
-le less than or equal 以下
-gt greater than より大きい
-ge greater than or equal 以上
```
- basename コマンド  
    パスから最後のファイル名またはディレクトリ名だけを取り出す

## つまずいたこと
```
完成したファイルのパスをARCHIVE_FILEに代入する際
ARCHIVE_FILE="$HOME/archives/${SOURCE}_$(date '+%Y-%m-%d_%H-%M-%S').tar.gz"
としたが、${SOURCE} は
SOURCE="/home/ryo/scripts" の可能性もあるため意図通りに動かない
↓
SOURCE_NAME にbasename コマンドで取り出した名前を代入して解決
```
## 課題
- 処理順のイメージを付ける。
```
1. 引数が1個あるか確認
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source>" >&2
    exit 1
fi

2. 第1引数をバックアップ元として代入
SOURCE="$1"

3. SOURCEの存在確認・権限確認
後で実装

4. 確認済みのSOURCEから名前を取り出す
SOURCE_NAME=$(basename "$SOURCE")
```

