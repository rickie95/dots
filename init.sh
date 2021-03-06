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

ln -s bspwm/bspwmrc ~/.config/bspwm/
ln -s sxhkd/sxhkdrc ~/.config/sxhkd/
ln -s polybar/config ~/.config/polybar/

# Downloads vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
