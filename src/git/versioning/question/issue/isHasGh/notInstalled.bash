echo "github cli not installed"
read -p "type number issue manual: " GITHUB_ISSUE
if [ "$GITHUB_ISSUE" != "" ]; then
  . $parent_path/question/body/main.bash
else
  read -p "you sure want skip issue? (Y/n) " ANSWER_SKIP
  if [ "$ANSWER_SKIP" != "n" ]; then
    . $parent_path/question/body/main.bash
  else
    . $parent_path/question/issue/isHasGh/notInstalled.bash
  fi
fi
