#! /bin/sh -x 

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

ln -s ~/git/dots/bspwm/bspwmrc ~/.config/bspwm/
ln -s ~/git/dots/sxhkd/sxhkdrc ~/.config/sxhkd/
ln -s ~/git/dots/polybar/config ~/.config/polybar/

# Enables syntax highlighting for nano

echo "include /usr/share/nano/*.nanorc" >> ~/.nanorc


# Retrives some useful repos

echo "\n\nInstalling scroll...\n"
git clone http://www.github.com/rickie95/personal-scroll ~/git/scroll
cd ~/git/scroll
sudo make clean install

echo "\n\nInstalling st...\n"
git clone http://www.github.com/rickie95/personal-st ~/git/st
cd ~/git/st
sudo make clean install

cd ~
