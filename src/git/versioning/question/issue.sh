read -p "is this connect to issue on github? (y/n) " ANSWER_BODY
if [[ ! $ANSWER_BODY =~ ^[Yy]$ ]]
  # cek has github cli
  ISGHAPP=$(gh --version)
  ISGHAPPREGEX="^[gh version.*]"
  if [[ $ISGHAPP =~ $ISGHAPPREGEX ]]; then
  else
    read -p "you dont have github cli, want add manual? (y/n) " ANSWER_BODY
    read -p "type number issue : " ANSWER_BODY
    read -p "you sure want skip this? (y/n) " ANSWER_BODY
  fi   
fi   
