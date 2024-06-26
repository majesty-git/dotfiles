#!/bin/bash

echo "Starting process"

sleep 1

echo "Installing packages"

sleep 1

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager --enable fedora-cisco-openh264

sleep 1

sudo dnf install -y git neovim alacritty unzip rofi firefox btop neofetch pcmanfm lxappearance polybar pavucontrol feh ffmpeg qt5-base-devel qt5ct flatpak steam lutris akmod-nvidia xorg-x11-drv-nvidia-cuda xrandr telegram i3


echo "Done"

sleep 1

echo "Importing dotfiles"

git clone https://github.com/majesty-git/dotfiles.git

mv ~/dotfiles/* ~
mv ~/dotfiles/*. ~

cd ~

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
mkdir ~/.fonts
unzip JetBrainsMono.zip -d ~/.fonts/

cd ~/.fonts

fc-cache -fv

echo "Done"

sleep 1

echo "Importing wallpaper"

sleep 1

cd ~

git clone https://github.com/majesty-git/walpapers.git

echo "Done"

echo "flatpak install flathub com.discordapp.Discord"
echo "flatpak install flathub com.spotify.Client"
