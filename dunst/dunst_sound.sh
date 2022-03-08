#!/bin/sh -e
export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

aplay $SCRIPTPATH/bell.wav
