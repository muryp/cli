read -p "Title?" ANSWER_TITTLE

if [ "$ANSWER_TITTLE" = "" ]; then
  read -p "want close?" ANSWER_TITTLE_CLOSE
  if [[ ! $ANSWER_TITTLE_CLOSE =~ [^Nn] ]]; then
    . $parent_path/question/title.sh # title
  else
    exit
  fi    
fi    
GIT_STATUS=$(echo $(git status --null) | sed -n -e "s/\([A-Z] \)/\n# \1/gp")
TITLE_CONCATE="$ANSWER_FEATURE:$ANSWER_TITTLE

# type body under this comment

# this comment not be use in commit 
$GIT_STATUS
"
echo $TITLE_CONCATE
. $parent_path/question/body.sh # title
