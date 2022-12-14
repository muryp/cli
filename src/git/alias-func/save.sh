alias MYGSV='
DIRNOW=$(pwd)
cdg
ga .
statusCommit=$(git status -s)
while [ "$statusCommit" != "" ]
do 
  echo "kamu melakukan commit pada : \\n $statusCommit"
  echo "Your Message : $1" 
  gcm "$1"

  break
done
'
function gsv(){
MYGSV
cd $DIRNOW
}
# push all branch and remote
function gsp(){
MYGSV
gssh
git remote | xargs -L1 git push --all
cd $DIRNOW
}

