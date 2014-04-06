# dotfilesディレクトリのパス
export DOTFILES=~/dotfiles

# zshの設定

# zshのキーバインドをVimにする
bindkey -v

# 補完を有効にします
autoload -U compinit; compinit -u

# 補完メッセージを読みやすくします
zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# 入力したコマンドが存在せず、ディレクトリならそこへcdします
setopt auto_cd
# ついでに、上へ行くcdも設定
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# cd時にpushdも
setopt auto_pushd
setopt pushd_ignore_dups

# hashの読み込み
[ -f $DOTFILES/zsh/hashes.zsh ] && source $DOTFILES/zsh/hashes.zsh

# aliasの読み込み
[ -f $DOTFILES/zsh/aliases.zsh ] && source $DOTFILES/zsh/aliases.zsh

# functionの読み込み
[ -f $DOTFILES/zsh/functions.zsh ] && source $DOTFILES/zsh/functions.zsh

# moonline.zshの読み込み
[ -f $DOTFILES/zsh/moonline.conf.zsh ] && source $DOTFILES/zsh/moonline.conf.zsh
