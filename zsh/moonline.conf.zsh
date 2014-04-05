# moonline.zshの読み込み
test -f $DOTFILES/zsh/moonline.zsh/moonline.zsh && source $DOTFILES/zsh/moonline.zsh/moonline.zsh

# moonline.zshの設定

# セパレーターをpowerline風に
MOONLINE_SEPARATOR=($'\u2b80' $'\u2b82')
MOONLINE_SUBSEPARATOR=($'\u2b81' $'\u2b83')


MOONLINE_COMPONENTS+=(
  prompt "%%"
)

MOONLINE_LEFT_LINE=2
MOONLINE_LEFT1_1=(user)
MOONLINE_LEFT1_2=(current_directory)
MOONLINE_LEFT2_1=(prompt)
MOONLINE_RIGHT1=(date)

moonline initialize