sudo cp ~/.vimrc /root
sudo cp -r ~/.vim/ /root

cp ~/.vimrc ~/env-config
cd  ~/env-config

git add .
git commit -am "automatic update"
git push origin master
