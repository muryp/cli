branch_now=$(git symbolic-ref --short HEAD)
branch_list=$(git branch | sed -n -e 's/^  \(.*\)/\1/p')
branch_answer=$(echo -e "use $branch_now branch\n$branch_list" | fzf)
if [ "$ANSWER_VERSION" = "" ]; then
  exit
fi    
# if [ "$branch_answer" != "use $branch_now branch" ]; then
#   gc $branch_answer
#   gm $owhbrnch
# fi    
