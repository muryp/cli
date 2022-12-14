# ===== Git bassic
#help
alias ghelp='v ~/.myconf/app/git/help/home.md'
# clone
alias gcl='git clone'
## menampilkan log
alias gl='git log'
alias glp="gl --graph --pretty" # log pretty three
alias glp2="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" # log pretty 2
## back to the previous commit
alias undo='git reset --hard HEAD^ && gl'
alias undo2='git reset --hard HEAD^^ && gl'
## status____________________
alias gs='git status'
alias gc='git checkout'
alias gbf='
thisBranchName=$(gb)
deleteStar=$thisBranchName:s/*/\ 
gc $(echo $deleteStar:s/^\ \ / | fzf)
'
alias gm='git merge'
alias gf='git fetch'
# git branch____________________ 
alias gb='git branch'
# remote ____________________
alias gr='git remote'
alias gra='gr add'
alias grr='gr rm'
# git add
alias ga='git add'
# add ssh
alias gssh='
echo "add ssh"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github'
