#!/bin/sh

sudo pacman -S xclip nodejs ctags npm rubygems python2-pip python-pip
yay -S ibexo liberation-fonts-ttf global
sudo npm install -g neovim
sudo easy_install pip
sudo pip install pip --upgrade
sudo pip3 install pip --upgrade
sudo pip3.7 install pip --upgrade
sudo pip3.7 install neovim
sudo pip3 install neovim
sudo pip install neovim
sudo pip2 install pip --upgrade
sudo pip2.7 install pip --upgrade
sudo pip2.7 install neovim
sudo pip2 install neovim

mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors

ln -sf `pwd`/init.vim ~/.config/nvim/init.vim
ln -sf `pwd`/ginit.vim ~/.config/nvim/ginit.vim
