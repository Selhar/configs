
`git config --global user.name ""`  
`git config --global user.email ""`  
`sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`  
`dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo`  
`sudo dnf copr enable daniruiz/flat-remix`  
`sudo dnf install thunar lxappearance arc-theme flat-remix ffmpegthumbnailer simple-mtpfs gvfs-mtp libmtp xclip i3 autoconf automake make ffmpeg-libs scrot`  
*switch to i3*  
  
`sudo dnf install deluge htop mpv cmus redshift steam wine urxvt calibre feh`  

# i3blocks
`git clone https://github.com/vivien/i3blocks`  
`cd i3blocks`  
`./autogen.sh`  
`./configure`  
`make`  
`make install`  

# in lxappearance  
theme: arc-dark  
font: inconsolata  
icon theme: flat-remix  

`cp misc/wallpaper.png ~/Pictures`  
`mkdir ~/.fonts`  
`cp ./fonts/* ~/.fonts`  
`cp i3/i3blocks.conf ~/i3blocks.conf`  
`mkdir ~/.i3-blocks`  
`mkdir ~/.i3-blocks/blocks`  
`cp i3/blocks/* ~/.i3-blocks/blocks`  
`cp i3/config /home/selhar/.config/i3/config`  
`cp ./Xresources ~/.Xresources`  
`cp ./urxvt-extensions/* /usr/lib64/urxvt/perl/`  
`xrdb ~/.Xresources`  
  
https://wiki.installgentoo.com/index.php/List_of_recommended_GNU/Linux_software  
