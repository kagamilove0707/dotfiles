" ファイルの上書きの際にバックアップを作ります
set nowritebackup

" バックアップ/スワップファイルは作成しません
set nobackup
set noswapfile

" Vim終了後もUndoが継続するようにします
if version >= 703
  set undofile
  set undodir=.
endif

" クリップボードをデスクトップと共有します
set clipboard+=unnamed
" 8進数を無効にします
set nrformats-=octal
" キー入力のパターンの待ち時間
set timeoutlen=3500
" 編集結果未保存なのに新しいバッファを開こうとするとき、警告します
set hidden
" カーソルキーで行末/行頭の移動可能にします
set whichwrap=b,s,[,],<,>
" バックスペースでインデントや改行を削除できるようにします
set backspace=indent,eol,start

" コマンドライン補完を強化します
set wildmenu

" タイトルを設定します
set title

" マウスを有効にします
if has('mouse')
  set mouse=a
endif

" 行番号を表示するようにします
set number
set numberwidth=4

" ===インデント関連===

" タブは使わなず、
set expandtab
" インデントの幅は2
set shiftwidth=2

" ===タブページ関連===

" 常にタブラインを表示する
set showtabline=2

" gfで開く先を新しいタブします
nnoremap <silent> gf <C-W>gf
nnoremap <silent> gF <C-W>gF

" neobundle.vimの読み込み
source $DOTFILES/vim/bundles.vim

" シンタックスハイライトを有効にします
syntax on

" pluginを使用可能にします
filetype plugin indent on
