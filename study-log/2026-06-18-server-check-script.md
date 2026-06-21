# server-check
Ubuntuサーバー初期確認

## やりたいこと
- サーバー構築後の状態を確認するコマンドをまとめてシェルスクリプトにする
- スクリプトファイルを自作コマンドとして利用
```
echo 'export PATH="$HOME=/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
echo $PATH
```
### 作業期間 2日

## 実行コマンド
- ログインユーザー確認
    - whoami
- ホスト名確認
    - hostname
- IPアドレス確認
    - hostname -I
### = version1.0 =
- SSH状態確認
    - systemctl is-active ssh
- SSHポート確認
    - ss -tln | grep :22
### = version2.0 =
- SSH状態確認
    - systemctl status ssh | grep -E "Active|port 22"
## 学んだこと
- スクリプトとは複数のコマンドをまとめたファイル
- ss
    - -p (プロセス名表示) は sudo が必要
    - -t (TCP)
    - -l (Listen状態の三)
    - -n (ポート番号を数字で表示)
- awk テキストを列ごとに処理する
- systemctl --no-pager (less しない)
- mv 元ファイル 変更名 (ファイル名変更)
- cp コピー元 コピー先 (ファイルコピー)
#### vim
ctrl + v → Visual Block で一括コメントアウト (Shift + i → # 入力) 解除 ( x )

## つまずいたこと
```
- Ubuntuサーバー環境で_が入力できない (キーボード配列がUS配列だったため)
    解決方法
        sudo dpkg-reconfigure keyboard-configuretion
            エラー内容　is not installed が出たら
            sudo apt update
            sudo apt install keyboard-configuration
        画面が変わったらJapaneseに変える(OADG 109が実機に近いとは…???)
        rebootして解決
```
### Permission denied
- 実行権限がなかったため。chmod +x で解決
- 確認方法 ls -l server_check

## 次回
- new シェルスクリプト作成
    - 作業ログ
    
    - トラッカー
    
    - 監視ログ

## 課題
- vim の操作に慣れる
