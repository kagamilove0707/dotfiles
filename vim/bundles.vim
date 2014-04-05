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

NeoBundleCheck
