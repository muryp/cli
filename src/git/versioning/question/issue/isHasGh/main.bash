# cek has github cli
ISGHAPP=$(gh --version)
ISGHAPPREGEX="^[gh version.*]"
if [[ $ISGHAPP =~ $ISGHAPPREGEX ]]; then
  . $parent_path/question/issue/list.bash
else
  . $parent_path/question/issue/isHasGh/notInstalled.bash
fi   
