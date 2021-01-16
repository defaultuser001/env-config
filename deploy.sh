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

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo 'nvm install node'
echo 'nvm install-latest-npm'

echo  ' En vim:: PlugInstall '
