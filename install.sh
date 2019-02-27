#!/bin/bash

cp -r ./fonts/* /usr/share/fonts
cp ./Xresources ~/.Xresources
xrdb ~/.Xresources
