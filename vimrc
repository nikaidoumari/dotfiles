" =====================================================
" testtest
" This program is for the Japanese.
" Therefore, comments are written in Japanese.
" All will be understood by reading the source code.
" =====================================================
" File name          : .vimrc
" Author             : Hayato Doi
" Last Update        : 2017/1/1/
" Since              : 2015/9/28
" Outline            : vimの設定ファイル
" Update information : dein.vimに移行
" Copyright (c) 2015-2017, Hayato Doi

" 行番号のの表示
set number

" 検索語句のハイライト
set hlsearch

" C言語スタイルのインデントを自動でいれる
set cindent

" タブの幅（表示）
set tabstop=4

" タブの幅（挿入）
set shiftwidth=4

" タブをタブとして扱う
set noexpandtab

" カッコを強調
set showmatch

" 色を付ける
syntax on

" 行番号の色
hi LineNr ctermfg=white

" escをCtrl+jに変更
imap <C-j> <esc>

" 表示するファイルのタイプを環境変数から取ってくる
filetype on

" カーソル行のハイライト
set cursorline

" タブの表示
set list
set listchars=tab:»-

" タブの色
hi SpecialKey ctermfg=241 ctermbg=NONE

" ヤンクする最大行のを1000にする。
set viminfo='20,\"1000

" Ctrl+eでNERDTreeToggleの起動
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" 色の設定を変更
set laststatus=2

" クリップボードを共有する
set clipboard=unnamedplus

" lightlineのテーマをwombatにする。
let g:lightline = {'colorscheme':'wombat'}

"キーのショートカット
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.condig/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim/dein/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add({'tomtom/tcomment_vim'})
call dein#add({'scrooloose/nerdtree'})
call dein#add({'itchyny/lightline.vim'})
call dein#add({'fatih/vim-go'})

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------

" " ==== 初回起動 ====
" if has('vim_starting')
" 	" runtimepathにneobundleのパスを指定する
" 	set runtimepath+=~/.vim/bundle/neobundle.vim/
" endif
" " ---- 初回起動 ----
"
" " NeoBundleを初期化
" call neobundle#begin(expand('~/.vim/bundle/'))
"
" " ==== インストールするプラグインをここに記述 ====
" 	" コメントON/OFFを手軽に実行
" 	NeoBundle 'tomtom/tcomment_vim'
" 	" ファイルマネージャー
" 	NeoBundle 'scrooloose/nerdtree'
" 	" ステータスラインの表示内容をシャレオツに
" 	NeoBundle 'itchyny/lightline.vim'
" 	" goのオールインワンプラグイン
" 	NeoBundle 'fatih/vim-go'
" " ---- インストールするプラグインをここに記述 ----
" call neobundle#end()
"
" " ファイルタイプ別のプラグイン/インデントを有効にする
" filetype plugin indent on