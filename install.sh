#!/bin/bash

if [ ! -d /usr/share/fonts/AnonymousPro ]; then
  cp -r ./fonts /usr/share/fonts
fi

cp ./Xresources $HOME/.Xresources
cp ./compton.conf $HOME/.config/
cp ./i3.conf $HOME/.config/i3/config
cp ./polybar/launch.sh $HOME/.config/polybar/launch.sh
cp ./polybar/config $HOME/.config/polybar/config

xrdb $HOME/.Xresources

echo 'Successfully installed.'