#!/bin/bash
export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
workspace=$(leftwm-state -q -n -t $SCRIPTPATH/goto.liquid)
tag=$(echo "$1-1" | bc)
./tag $workspace $tag
echo "SendWorkspaceToTag $workspace $tag" > $XDG_RUNTIME_DIR/leftwm/command-0.pipe