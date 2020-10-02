#!/bin/bash

cp ./.vimrc ../
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/plugins
cp ./plug.vim ~/.vim/autoload

echo 'En vim: :PlugInstall'
echo 'Luego ejecutar "for_linux_after_deploy.sh"
