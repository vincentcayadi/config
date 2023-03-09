#!/bin/sh

sudo pacman -Syu

# Installing paru
sudo pacman -S git base-devel 

cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

sudo rm -rf ~/paru

# Install Terminal
sudo pacman -S kitty

# Install others
sudo pacman -S qtile rofi vlc polybar

# Install Fonts
paru -S apple-fonts nerd-fonts-fira-code nerd-fonts-jetbrains-mono ttf-apple-emoji

# Install zsh
sudo pacman -S zsh
chsh -s /usr/bin/zsh

# Install zsh plugins
mkdir ~/config/zsh/scripts
cd ~/config/zsh/scripts
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-completions.git

# Install fcitx
sudo pacman -S fcitx fcitx-configtool fcitx-googlepinyin

