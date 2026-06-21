# dircolors-setting

## 目的
ディレクトリの色が背景色と重なって見づらいため変更する

### 作業期間 2日

## 実施内容
- dircolors -p > ~/.dircolors
- ls -la ~/.dircolors
- vim ~/.dircolors
- DIR 01;34 → 01;36 LINK 01;36 → 01;35 に変更
```
- grep dircolors ~/.bashrc
    if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
あれば reboot で反映
なければ追記して source ~/.bashrc で反映
```
- dircolors LS_COLORS の設定を出力するコマンド
- -x 実行権限があるか -f ファイルが存在するか -d ディレか つまりdircolorsコマンドが使えるなら
- -r readable 設定ファイル読めるか
- eval 文字列をコマンドとして実行
- A && B || C Aが読めればBを実行、B失敗でC実行

## 学んだこと
- 実行ファイルはバイナリ
- rm -- はオプション終了
- vim r 1文字変換

## つまずいたこと
```
- cat /usr/bin/dircolors をして画面全体が文字化けしてしまい戻らなくなる
    解決方法
        resetコマンドの実施
    dircolorsはコマンドで
```
## 次回
- 

## 課題
- コード読解力
