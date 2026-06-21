# Ubuntu Server 24.04 インストール

## 目的
ポートフォリオ用のUbuntuサーバー環境構築

## 実施内容
- VirtualBoxで仮想マシン作成
- Ubuntu Server 24.04.4 インストール
- CPU 2コア
- メモリ　2048MB
- LVM構成

## 学んだこと
- LVMは理論ボリューム管理
- Proxy設定は通常不要
```
- OpenSSH ServerのチェックはSSHサーバーパッケージのインストールを意味する
    サーバー構築後、状態確認コマンド
        sudo systemctl status ssh
            Active: inactive (dead)
    
    起動コマンド
        sudo systemctl start ssh
    
    自動起動設定をしないとシャットダウン後inactiveになる
        sudo systemctl enable ssh
            Loaded: loaded (/usr/~~~; disabled; ~~~)
            ↓
            Loaded: loaded (/usr/~~~; enabled; ~~~)
```

## つまずいたこと
- CPUと理論プロセッサの違いがわからなかった
- VirtualBoxの無人インストールの意味が分からなかった
- 各設定画面の内容がわからなかった

## 次回
- OpenSSH導入
- Git導入
- Ubuntuサーバーの再構築 (各設定画面の内容を理解する)

## 課題
- 設定内容を自分で説明できるようになる
- 英語の設定画面を読める範囲を増やす
- AIに頼る前に仮説を立てる習慣をつける
