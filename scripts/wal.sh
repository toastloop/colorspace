#!/bin/bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
  ### Check if template dir exists, then put template in its proper place
  if [ ! -d $HOME/.config/wal/templates ] ; then
    mkdir $HOME/.config/wal/templates &&
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.toml  $HOME/.config/wal/templates
  elif [ ! -f $HOME/.config/wal/templates/color.leftwm-theme.toml ] ; then
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.toml  $HOME/.config/wal/templates
  fi

  my_array=($HOME/.config/leftwm/themes/current/backgrounds/*)
      ####my_array=(/usr/share/backgrounds/*)
  #use pywal to generate color schemes for almost everything
  wal -i ${my_array[$(( $RANDOM % ${#my_array[@]}))]} -a 80
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill $HOME/.config/leftwm/themes/current/backgrounds/*
      ####feh --randomize --bg-fill /usr/share/backgrounds/*
  fi
fi
