#!/bin/bash

cp -r ./fonts/* /usr/share/fonts
cp ./Xresources ~/.Xresources
cp ./compton.conf /etc/xdg/
cp ./config ~/.config/i3
xrdb ~/.Xresources
