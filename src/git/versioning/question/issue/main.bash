read -p "is this connect to issue on github? (y/N) " ANSWER_BODY_ISSUE
if [ "$ANSWER_BODY_ISSUE" != "y" ]; then
  . $parent_path/question/body/main.bash
else
  . $parent_path/question/issue/isHasGh/main.bash
fi
