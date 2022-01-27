#!/usr/bin/env bash
if ! [ -x "$(command -v arcolinux-logout)" ]; then
   sh ~/.config/leftwm/themes/current/polybar/scripts/powermenu.sh
else
    arcolinux-logout
fi
