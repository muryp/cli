grep -o '^[^#]*' FILE_VIM_GIT
BODY_GIT=$(cat FILE_VIM_GIT)
echo $BODY_GIT
rm $FILE_VIM_GIT
