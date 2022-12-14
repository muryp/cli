#!/bin/bash
ROOT_PATH=$(dirname $(dirname $0)/$(readlink $0))
. $ROOT_PATH/bin/$1.bash
# echo "$parent_path"
echo "hai"
