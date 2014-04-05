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

" マウスを有効にします
if has('mouse')
  set mouse=a
endif

" 行番号を表示するようにします
set number

" インデントの幅関連

" タブは使わなず、
set expandtab
" インデントの幅は2
set shiftwidth=2

" シンタックスハイライトを有効にします
syntax on

" pluginを使用可能にします
filetype plugin indent on
