#!/bin/sh
echo "开始配置linux"
echo "检测更新"
sudo apt update 
echo "检测完成"
sudo apt upgrade
echo "更新完成"
sudo apt install gdebi
sudo apt install vim 
sudo apt install sqlite3
sudo apt install adb
sudo apt install shadowsocks
sudo apt install wget 
sudo apt install git 
sudo apt-get install fonts-wqy-microhei
sudo apt-get install shutter


#以下是选择安装
#安装zsh
#sudo apt-get install zsh
#安装oh-my-zsh
#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#在.zshrc中修改自己喜欢的主题

##安装albert
#sudo add-apt-repository ppa:noobslab/macbuntu
#sudo apt-get update
#sudo apt-get install albert




echo "卸载多余的软件"
sudo apt-get remove unity-webapps-common
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot
sudo apt-get remove gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install
sudo apt-get remove onboard deja-dup
sudo apt-get remove libreoffice-common

