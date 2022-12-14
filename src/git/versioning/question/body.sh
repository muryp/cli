read -p "want use body? (y/n/c) " ANSWER_BODY
if [[ ! $ANSWER_BODY =~ [^Yy] ]]; then
  local FILE_VIM_GIT=~/.muryp/git/git-msg-$(date +%m-%d-%y-%Y-%H-%M-%S).md
  nvim --cmd "lua GIT_COMMIT='y'" $FILE_VIM_GIT
  grep -o '^[^#]*' FILE_VIM_GIT
  BODY_GIT=$(cat FILE_VIM_GIT)
  echo $BODY_GIT
fi

