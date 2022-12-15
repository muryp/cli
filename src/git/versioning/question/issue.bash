read -p "is this connect to issue on github? (y/n) " ANSWER_BODY
if [[ ! $ANSWER_BODY =~ ^[Yy]$ ]]
  . $parent_path/utils/cekVersionGH.bash
  if [[ $ISGHAPP =~ $ISGHAPPREGEX ]]; then
    . $parent_path/utils/issueList.bash
  else
    echo "github cli not installed"
    function manualIsue() {
      read -p "type number issue manual: " GITHUB_ISSUE
      if [ "$GITHUB_ISSUE" != "" ]; then
        . $parent_path/question/body.bash # feature list array
      fi
      read -p "you sure want skip issue? (Y/n) " ANSWER_SKIP
      if [ "$ANSWER_SKIP" != "n" ]; then
        exit
      fi
      manualIsue
    }
    manualIsue
  fi   
fi   
