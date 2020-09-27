#! /bin/sh 

# Enable all syntax definitions for nano editor
echo 'include "/usr/share/nano/*.nanorc"' >> /home/$USER/.nanorc

# Installs required packages
echo "Installing packages"
pacman -Syu
pacman -S --needed - < pkglist.txt 

# Creates dedicated folders
echo "Coping configs.."

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar

# Creates symlink from repo's dots to new folders

ln -s dots/bspwm.config ~/.config/bspwm/
ln -s dots/sxhkd.config ~/.config/sxhkd/
ln -s dots/polybar.config ~/.config/polybar/

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
