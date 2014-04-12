# 端末を256色対応に
TERM=xterm-256color

# Vim Version Managerの初期化
[[ -f ~/.vvm/etc/login ]] && source ~/.vvm/etc/login

# cabalのインストールする先をパスに追加
path=(
  $HOME/.cabal/bin
  $path
)

export MANPATH=$HOME/man:
