#!/bin/sh

echo "开始安装和配置vim"

sudo apt install vim

echo "安装vim完成!!!!"

sudo apt install git

echo "Git安装完成!!!"


echo "配置vundle!!!!"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



sudo apt install python3-pep8

sudo apt install python-pep8

sudo apt install python3-jedi

sudo apt install python-jedi

sudo apt install python3-flake8

sudo apt install python-flake8

echo "正在备份原有的vimrc文件"

mv ~/.vimrc ~/.vimrc_bak

echo "配置完成!!!!!!"

echo "正在配置新的vimrc文件"

cp vimrc  ~/.vimrc
mkdir -p ~/.vim/colors
cp molokai.vim  ~/.vim/colors

echo "配置文件完成，旧文件位于'~/.vimrc_bak'，可以随时将其恢复!"



