show16color() {
  local -a colors
  colors=(black red green yellow blue purple cyan white)
  local i
  for i in {0..7}; do
    echo -e "\e[0;3${i}m \\\\e[0;3${i}m ${colors[$(($i + 1))]}"
  done
  for i in {0..7}; do
    echo -e "\e[1;3${i}m \\\\e[1;3${i}m light ${colors[$(($i + 1))]}"
  done
}

show256color() {
  local i
  echo "\\\\e[38;5;XXm"
  echo
  for i in {016..255}; do
    echo -ne "\e[38;5;${i}m${i} "
    [[ $((($i - 15) % 6)) -eq 0 ]] && echo
  done
  echo
}
