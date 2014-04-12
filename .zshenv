# dotfilesディレクトリのパス
export DOTFILES=~/dotfiles

# 端末を256色対応に
TERM=xterm-256color

# Vim Version Managerの初期化
[[ -f ~/.vvm/etc/login ]] && source ~/.vvm/etc/login

# rbenvの初期化
path=($DOTFILES/.rbenv/bin $path)
eval "$(rbenv init -)"

# cabalのインストールする先をパスに追加
path=($HOME/.cabal/bin $path)

# ホームディレクトリのパス類を追加
path+=($HOME/bin)
export MANPATH=$HOME/man:
