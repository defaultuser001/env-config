sudo cp ~/.vimrc /root
sudo cp ~/.vimrc.local /root

sudo cp -r ~/.vim/ /root

cp ~/.vimrc ~/vim-config
cd ~/vim-config

git add .
git commit -am "automatic update"
git push origin master
