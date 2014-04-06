# moonline.zshの開発時は読み込まないようにします
# (シェル変数などがややこしくなるので)
[ "$MOONLINE_DEVELOP" != '' ] && return 0

setopt transient_rprompt

# moonline.zshの読み込み
[ -f $DOTFILES/zsh/moonline.zsh/moonline.zsh ] && source $DOTFILES/zsh/moonline.zsh/moonline.zsh

# moonline.zshの設定

# セパレーターをpowerline風に
MOONLINE_SEPARATOR=($'\u2b80' $'\u2b82')
MOONLINE_SUBSEPARATOR=($'\u2b81' $'\u2b83')

setopt prompt_subst
MOONLINE_COMPONENTS+=(
  prompt "%%"
  path "%30<...<%~%<<"
  git-branch "\$(my-git-branch)"
)

MOONLINE_LEFT_LINE=2
MOONLINE_LEFT1_1=(username)
MOONLINE_LEFT1_2=(path)
MOONLINE_LEFT2_1=(prompt)
MOONLINE_RIGHT1=(time git-branch)

my-git-branch() {
  local branch=$(git symbolic-ref HEAD 2>/dev/null)
  if [[ $branch != '' ]]; then
    echo -e "\u2b60 ${branch:t}"
  fi
}

moonline initialize
