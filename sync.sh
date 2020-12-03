cp ~/.vimrc /root
cp -r ~/.vim/ /root

cp ~/.vimrc ~/vim-config
cd ~/vim-config

git add .
git commit -am "automatic update"
git push origin master
