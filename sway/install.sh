config_folder=/home/$USER/.config/sway

if [ ! -d $config_folder/settings ]; then
  mkdir $config_folder/settings;
fi

if [ ! -d $config_folder/config.d ]; then
  mkdir $config_folder/config.d;
fi

cp ./definitions $config_folder/definitions
cp ./config $config_folder/config
cp -r ./config.d/* $config_folder/config.d/
cp -r ./settings/* $config_folder/settings/
cp ./system/wallpaper.jpg /home/selhar/Documents/System/wallpaper.jpg
cp -r ./waybar/* ~/.config/waybar/
exit 0
