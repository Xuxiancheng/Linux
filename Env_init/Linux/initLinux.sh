#!/bin/sh 

echo "###################################"
echo "#                                #"
echo "#Auther:   xxc                   #"
echo "#Version:  1.0                   #"
echo "#Date:     2019.6.2              #"
echo "#Des:      Linux环境搭建         #"
echo "#                                #"
echo "##################################"


uninstall_unuse_soft(){

	printf -- "\033[37m uninstall unuse soft \033[0m\n"
        sudo apt-get remove unity-webapps-common
        sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot
        sudo apt-get remove gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install
        sudo apt-get remove onboard deja-dup
        sudo apt-get remove libreoffice-common
	printf -- "\033[37m install done!  \033[0m\n"

}

installl_usefull_soft(){

	printf -- "\033[32m install usefull soft!  \033[0m\n"
	sudo apt install gdebi vim wget curl tree shutter zip p7zip-full shadowsocks shutter
	printf -- "\033[32m install done           \033[0m\n"
}



install_android_dev(){
	
	printf -- "\033[33m install android dev tools \033[0m\n"
	sudo apt install adb sqlite3 gcc gdb sqlitebrowser  android-tools-fastboot
	printf -- "\033[33m install done!             \033[0m\n"
}


install_git_soft(){
	
	printf --  "\033[31m install git tools! \033[0m\n"
	sudo apt install git tig gitk meld 
	printf --  "\033[31m install done!      \033[0m\n"

}


install_fonts(){

	printf -- "\033[33m install font \033[0m\n"
	sudo apt install fonts-wqy-microhei
	printf -- "\033[33m install font done \033[0m\n"

}

install_media(){

	printf -- "\033[35m install media \033[0m\n"
	sudo apt install ubuntu-restricted-extras vlc
	printf -- "\033[35m install done! \033[0m\n"

}


install_oh_my_zsh(){

	printf -- "\033[36m install oh my zsh \033[0m\n"
	sudo apt install zsh 
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	printf -- "\033[36m install done!     \033[0m\n"
	
}

update_linux(){
	
	printf -- "\033[31m  update linux  \033[0m\n"
	sudo apt update
	sudo apt upgrade
	printf -- "\033[31m  update done!  \033[0m\n"
	
}



    update_linux
    uninstall_unuse_soft
    installl_usefull_soft
    install_git_soft
    install_media
    install_fonts
    install_android_dev
