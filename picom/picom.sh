#!/bin/bash
export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom -b --config $SCRIPTPATH/picom.conf
fi
