
sudo cp ~/.vimrc /root
sudo cp -r ~/.vim/ /root

cp -r ~/.config/terminator ~/env-config
cp ~/.vimrc ~/env-config
cd  ~/env-config

git add .
git commit -am "automatic update"
git push origin master
