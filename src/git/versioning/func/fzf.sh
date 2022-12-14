function my_fzf() {
  arr=("$@")
  RETURN=$(printf "%s\n" "${arr[@]}" | fzf --preview 'echo "\x1b[1;36m{}" | sed "s/:.*/ :\n\x1b[0;34m===========\n \x1b[0;35m/" && echo {} | sed "s/.*: //"' --preview-window :wrap)
  echo $RETURN
}
