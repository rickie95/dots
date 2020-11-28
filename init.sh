#! /bin/sh -x 

# Installs required packages

echo "Installing packages"

pacman -Syu
yay -S bspwm polybar sxhkd rofi zathura siji-git -nodiffmenu --noeditmenu

# Creates dedicated folder

echo "Coping configs.."

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar

# Creates symlink from repo's dots to new folders

ln -s bspwm/bspwmrc ~/.config/bspwm/
ln -s sxhkd/sxhkdrc ~/.config/sxhkd/
ln -s polybar/config ~/.config/polybar/

# Enables syntax highlighting for nano

echo "include /usr/share/nano/*.nanorc" >> ~/.nanorc
