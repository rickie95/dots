#! /bin/sh 

# Installs required packages

echo "Installing packages"

pacman -Syu
pacman -S bspwm polybar sxhkd rofi mpd nnmpdc feh zathura vmcodium --noconfirm

# Creates dedicated folder

echo "Coping configs.."

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar

# Creates symlink from repo's dots to new folders

ln -s bspwm/bspwmrc ~/.config/bspwm/
ln -s sxhkd/sxhkdrc ~/.config/sxhkd/
ln -s polybar/config ~/.config/polybar/

# Retrives some useful repos

mkdir ~/git

echo "Installing scroll"
mkdir ~/git/scroll
git clone http://www.github.com/rickie95/personal-scroll ~/git/scroll
cd ~/git/scroll
sudo make clean install

echo "Installing st..."
mkdir ~/git/st
git clone http://www.github.com/rickie95/personal-st ~/git/st
cd ~/git/st
sudo make clean install

cd ~
