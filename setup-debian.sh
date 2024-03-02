#!/bin/bash

echo "Starting process"

sleep 1

echo "Installing packages"

sleep 1

sudo apt install -y git neovim alacritty unzip rofi firefox stow btop neofetch thunar thunar-volman lxappearance polybar pavucontrol base-devel feh ffmpeg

echo "Done"

sleep 1

echo "Importing dotfiles"

git clone https://github.com/majesty-git/dotfiles.git

cd dotfiles

stow .

cd ~

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip

unzip JetBrainsMono.zip ~/.fonts/

cd ~/.fonts

fc-cache -fv

echo "Done"

sleep 1

echo "Importing wallpaper"

sleep 1

cd ~

git clone https://github.com/majesty-git/walpapers.git
