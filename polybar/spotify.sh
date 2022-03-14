#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" || exit ; pwd -P )"
export SCRIPTPATH

spotify=$(playerctl -p spotifyd,%any metadata --format "  {{ title }} - {{ artist }} " -s)

if [ -n "$spotify" ]; then
    echo "$spotify" | tee "$SCRIPTPATH/cache.txt"
else
    cat "$SCRIPTPATH/cache.txt"
fi