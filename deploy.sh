#!/bin/bash

cp ~/vim-config/.vimrc ~/
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/plugins
cp ~/vim-config/plug.vim ~/.vim/autoload
sudo apt  install -y vim-gtk 

#Terminator
cp ~/vim-config/terminator ~/.config/

echo  ' En vim:: PlugInstall '
