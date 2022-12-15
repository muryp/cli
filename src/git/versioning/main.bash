#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
. $parent_path/func/fzf.bash # fzf function for option
. $parent_path/func/concat.bash # merger msg
. $parent_path/question/feature.bash # feature list array
