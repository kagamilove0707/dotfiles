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
  git-branch "\$(my-git-info)"
)

MOONLINE_LEFT_LINE=2
MOONLINE_LEFT1_1=(username)
MOONLINE_LEFT1_2=(path)
MOONLINE_LEFT2_1=(prompt)
MOONLINE_RIGHT1=(time git-branch)

my-git-info() {
  local branch=$(git symbolic-ref HEAD 2>/dev/null)
  if [[ $branch != '' ]]; then
    branch=${branch:t}
    local str=$'\u2b60 '
    local sts mgd
    sts=$(git status -s | wc -l)
    mgd=$(git branch --no-merged | wc -l)
    str+="%{"
    if [[ $mgd -gt 0 ]]; then str+="%F{red}"
    elif [[ $sts -gt 0 ]]; then str+="%F{yellow}"
    else str+="%F{green}" fi
    str+="%}"
    str+="$branch"
    [[ $mgd -ne 0 ]] && str+=" M:$mgd"
    [[ $sts -ne 0 ]] && str+=" F:$sts"
    print $str
  fi
}

moonline initialize
