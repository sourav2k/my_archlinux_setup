#!/bin/bash
sudo pacman -Syu 
sudo pacman -S htop bashtop neofetch vlc ffmpeg rust  zsh packagekit-qt5 latte-dock 
echo -e "installing i3 and required components"
sleep 2s
sudo pacman -S i3-gaps gnome-disk-utility i3lock i3blocks gnome-screenshot rofi alacritty nautilus gedit simplescreenrecorder
echo -e "getting some requried package from AUR"
yay -S polybar cava picom-jonaburg-git
echo -e "setting up zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "installing zsh jovial"
sleep 2s
curl -sSL https://github.com/zthxxx/jovial/raw/master/installer.sh | sudo -E bash -s $USER
echo -e "cloning the NORDIC KDE"
cd $HOME && git clone https://github.com/EliverLara/Nordic.git
echo -e "installing some misc stuff"
sleep 2s
sudo pacman -S jq feh clash
cd $HOME/Pictures && curl -LO https://raw.githubusercontent.com/thefallnn/Nord-Wallpapers/master/wallpapers/10.png
zenity --info --text="installation of  theFallnn has been complete"

