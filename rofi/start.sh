#!/bin/sh
export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
THEME="$SCRIPTPATH/start.rasi"
rofi -no-config -show drun -theme "$THEME"
