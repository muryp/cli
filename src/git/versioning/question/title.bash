read -p "Title?" ANSWER_TITTLE

if [ "$ANSWER_TITTLE" = "" ]; then
  read -p "want close?" ANSWER_TITTLE_CLOSE
  if [[ ! $ANSWER_TITTLE_CLOSE =~ [^Nn] ]]; then
    . $parent_path/question/title.bash # title
  else
    exit
  fi    
fi    

. $parent_path/question/issue/main.bash
