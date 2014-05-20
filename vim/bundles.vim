set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=$DOTFILES/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('$DOTFILES/.vim/bundle'))
endif

" neobundle.vim自身をneobundle.vimで管理しますです
NeoBundleFetch 'Shougo/neobundle.vim'

" 使うプラグイン達

" 汎用系

" lightline.vim
NeoBundle 'itchyny/lightline.vim'
source $DOTFILES/vim/lightline.conf.vim

" neocomplete.vim
NeoBundle 'Shougo/neocomplete.vim'
source $DOTFILES/vim/neocomplete.conf.vim

" quickrun.vim
NeoBundle 'thinca/vim-quickrun'
source $DOTFILES/vim/quickrun.conf.vim

" vimdoc-ja (ヘルプを日本語に)
NeoBundle 'vim-jp/vimdoc-ja'

" haskell系

" vim2hs
" Haskellのシンタックスハイライトを強化
NeoBundleLazy 'dag/vim2hs', {
      \ 'autoload': { 'filetypes': [ 'haskell' ] }
      \ }
let g:haskell_conceal = 0

" neco-ghc
" Haskellの補完
NeoBundle 'eagletmt/neco-ghc', {
      \ 'autoload': { 'filetypes': [ 'haskell' ] }
      \ }
let g:necoghc_enable_detailed_browse = 1

NeoBundleCheck
