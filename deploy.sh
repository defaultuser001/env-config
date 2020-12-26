#!/bin/bash

cp ~/env-config/.vimrc ~/
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/plugins
cp ~/env-config/plug.vim ~/.vim/autoload
sudo apt  install -y build-essential vim-gtk cmake python-dev python3-dev

#Terminator
sudo apt install terminator
cp -r ~/env-config/terminator ~/.config/

echo 'Instalar NPM y NodeJS'
echo  ' En vim:: PlugInstall '
