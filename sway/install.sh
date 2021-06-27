config_folder=/home/$USER/.config/sway

if [ ! -d $config_folder/settings ]; then
  mkdir $config_folder/settings;
fi

cp -r ./settings/* $config_folder/settings/
cp ./system/wallpaper.jpg /home/selhar/Documents/System/wallpaper.jpg

exit 0
