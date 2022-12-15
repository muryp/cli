# feature/fix
list_feature=(
'GFIX: a bug fix has occurred'
"GCHORE: changes that do not relate to a fix or feature and don't modify src or test files (for example updating dependencies)"
'GREFACTOR: refactored code that neither fixes a bug nor adds a feature'
'GDOCS: updates to documentation such as a the README or other markdown files'
'GSTYLE: changes that do not affect the meaning of the code, likely related to code formatting such as white-space, missing semi-colons, and so on.'
'GTEST: including new or correcting previous tests'
'GPERF: performance improvements'
'GCI: continuous integration related'
'GBUILD: changes that affect the build system or external dependencies'
'GREVERT: reverts a previous commit'
)
ANSWER_FEATURE=$(echo $(my_fzf "${list_feature[@]}") | sed "s/: .*/:/")
if [ "$ANSWER_FEATURE" != "" ]; then
  . $parent_path/question/title.bash # feature list array
fi    
