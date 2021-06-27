#bin/bash

config_folder=/home/$USER/.config/sway

cp /home/$USER/Documents/System/wallpaper.jpg ./system/wallpaper.jpg
cp $config_folder/config ./
cp $config_folder/default-keyboard ./
cp $config_folder/definitions ./
cp $config_folder/default-screen ./
exit 0
