# Version
LIST_VERSION=(
'not use'
'new: new'
'major: updates, backward not compatible'
'minor: updates, backward compatible'
'path: bug fixing, backward compatible'
)
ANSWER_VERSION=$(echo $(my_fzf "${LIST_VERSION[@]}") | sed "s/: .*/:/")
if [ "$ANSWER_VERSION" = "" ]; then
  exit
fi    
if [ "$ANSWER_VERSION" = "cancel" ]; then
  . $parent_path/question/feature.sh # feature list array
else
  echo $ANSWER_VERSION
  . $parent_path/question/title.sh # title
fi    
