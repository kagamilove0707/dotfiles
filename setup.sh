#!/bin/bash

DOTFILES="$(cd "$(dirname $0)"; pwd)"

ln -fs $DOTFILES/.vimrc $HOME/.vimrc
ln -fs $DOTFILES/.zshrc $HOME/.zshrc
ln -fs $DOTFILES/.vim $HOME/.vim
ln -fs $DOTFILES/.gitignore-global $HOME/.gitignore-global
