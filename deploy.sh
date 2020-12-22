#!/bin/bash

cp ~/env-config/.vimrc ~/
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/plugins
cp ~/env-config/plug.vim ~/.vim/autoload
sudo apt  install -y vim-gtk 

#Terminator
cp -r ~/env-config/terminator ~/.config/

echo  ' En vim:: PlugInstall '
