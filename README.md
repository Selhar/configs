git config --global user.name ""  
git config --global user.email ""

mkdir ~/.fonts  
cp ./fonts/* ~/.fonts  
cp ./i3/.i3blocks.conf ~/.i3blocks.conf  
mkdir ~/.i3-blocks  
mkdir ~/.i3-blocks/blocks  
cp ./i3/blocks/* ~/.i3-blocks/blocks  
cp ./i3/config /home/selhar/.config/i3/config  
cp ./Xresources ~/.Xresources  
cp ./urxvt-extensions/* /usr/lib64/urxvt/perl/  
xrdb ~/.Xresources  
  
# in lxappearance
theme: arc-dark  
font: inconsolata  
icon theme: flat-remix  

# i3blocks
cd i3blocks  
make clean debug # or make clean all  
sudo make install  

# packages
sudo dnf copr enable daniruiz/flat-remix  
sudo dnf install thunar lxappearance arc-theme flat-remix ffmpegthumbnailer simple-mtpfs gvfs-mtp libmtp
