GIT_STATUS=$(echo $(git status --null) | sed -n -e "s/\([A-Z] \)/\n# \1/gp")
if [ "$GITHUB_ISSUE" != "" ]; then
  GITHUB_ISSUE_MSG="(#$GITHUB_ISSUE)"
fi
CONCATE_GIT_MSG="$ANSWER_FEATURE $ANSWER_TITTLE $GITHUB_ISSUE_MSG

# type body under this comment

# this comment not be use in commit
$GIT_STATUS
"
echo "$CONCATE_GIT_MSG" > $FILE_VIM_GIT
