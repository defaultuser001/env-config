#!/bin/bash

cp ~/vim-config/.vimrc ~/
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/plugins
cp ~/vim-config/plug.vim ~/.vim/autoload

echo  ' En vim:: PlugInstall '
echo  ' Luego ejecutar "for_linux_after_deploy.sh '
