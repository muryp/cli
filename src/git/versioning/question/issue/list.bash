GITHUB_ISSUE=$(gh issue list | fzf --preview "gh issue view {+1}" | awk '{print $1}')
if [ "$GITHUB_ISSUE" != "" ]; then
  . $parent_path/question/body/main.bash # feature list array
else
  # confirm exit form gh issue
  read -p "you sure want skip issue? (Y/n) " ANSWER_SKIP
  if [ "$ANSWER_SKIP" != "n" ]; then
    . $parent_path/question/body/main.bash
  else
    # back to list issue
    . $parent_path/question/issue/list.bash
  fi
fi
