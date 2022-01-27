#!/usr/bin/env bash

export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#Find all your wallpapers
DIR="/usr/share/backgrounds/*"
#Select wallpaper at random
SCREEN=$(ls $DIR/*.jpg | shuf -n1)


convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) $SCREEN -blur 0x4 $SCRIPTPATH/blurlock.png
            betterlockscreen -l $SCRIPTPATH/blurlock.png

rm $SCRIPTPATH/blurlock.png