function concateMsg() {
  GIT_STATUS=$(echo $(git status --null) | sed -n -e "s/\([A-Z] \)/\n# \1/gp")
  CONCATE_GIT_MSG="$ANSWER_FEATURE $ANSWER_TITTLE (#$GITHUB_ISSUE)

  # type body under this comment

  # this comment not be use in commit
  $GIT_STATUS
  "
  echo "$CONCATE_GIT_MSG" > $1
}
