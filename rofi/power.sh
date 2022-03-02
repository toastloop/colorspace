#!/usr/bin/env bash

export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

THEME="$SCRIPTPATH/power.rasi"

rofi_command="rofi -no-config -theme $THEME"

# Options
shutdown="Shutdown"
reboot="Restart"
lock="Lock"
suspend="Suspend"
logout="Logout"

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
        i3lock-fancy-dualmonitor -f Noto-Mono-Nerd-Font-Complete
        ;;
    $suspend)
		systemctl suspend
        ;;
    $logout)
        loginctl kill-session $XDG_SESSION_ID
        ;;
esac