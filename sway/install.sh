config_folder=/home/$USER/.config/sway

if [ ! -d $config_folder/settings ]; then
  mkdir $config_folder/settings;
fi
cp ./definitions $config_folder/definitions
cp ./config $config_folder/config
cp -r ./settings/* $config_folder/settings/
cp ./system/wallpaper.jpg /home/selhar/Documents/System/wallpaper.jpg

exit 0
