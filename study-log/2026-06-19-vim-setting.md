# vim-setting

## 目的
文字の色が 01;34 で見づらいため変更する

## 実施内容
- vim --version | vimrc (user vimrc file: "$HOME/.vimrc が設定されていればOK)
- ~/.vimrc なければ作成
- colorscheme の設定 (今回は elflord 採用)

## 学んだこと
- わからないコマンド、コードは調べてから実行する。
- .vimrc コメントアウトは " になる。ファイルごとにコメント記号は異なる。(.sh → # ) 

## つまずいたこと
### ChatGPTで調べにより :echo synIDattr(synID(line("."), col("."), 1), "name") での解決を試みて迷宮入りになる。
```
[原因]
一部の配色を変えようとしたため、カーソル位置の文字が、どんなシンタックス（構文強調）グループに属しているかを調べた。
例）# コメント の部分にカーソルを置いてこのコマンドを実行すると、Comment と表示される
[解決方法]
Gimini に調べで colorscheme で全体の配色を変えた。
```
### エラー内容がわからない
```
エラー内容 (原因：文法間違い → set syntax on )
Error detected while processing /home/ryo/.vimrc:
- ファイルの処理中にエラーを検知
line 7:
- そのファイルの7行目
E518: Unknown option: on
- on という設定オプションは知らない
- set の後ろにはオプション名なので on は認識されない
```

## 次回
### 各タイトルの英語と設定の意味解説
```
" ==========================================
" 1. Appearance and Usability
" ==========================================
colorscheme torte
syntax on
set number

" ==========================================
" 2. Indentation and Tab Settings
" ==========================================
set expandtab
set tabstop=4
set shiftwidth=4

" ==========================================
" 3. Search Optimization
" ==========================================
set hlsearch
set ignorecase
set smartcase
```
### 課題
- 英語力