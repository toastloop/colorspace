#!/bin/bash
export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
workspace=$(leftwm-state -q -n -t $SCRIPTPATH/goto.liquid)
tag=$(echo "$1-1" | bc)
leftwm-command "SendWindowToTag $1"
echo "SendWorkspaceToTag $workspace $tag" > $XDG_RUNTIME_DIR/leftwm/command-0.pipe