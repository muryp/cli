#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
. $parent_path/func/fzf.sh # fzf function for option
. $parent_path/question/feature.sh # feature list array
