#! /usr/bin/bash

echo "Installation starts"

read -sp "Enter Root Password: " password
echo

echo -e "$password\n" | sudo -S dnf update -y

# link: https://www.if-not-true-then-false.com/2010/install-google-chrome-with-yum-on-fedora-red-hat-rhel/
# echo "installing google-chrome"
# dnf update -y
# dnf install fedora-workstation-repositories
# dnf config-manager --set-enabled google-chrome
# dnf install google-chrome-stable
# echo "Successfully installed google chrome"

# link: https://developer.fedoraproject.org/tech/languages/go/go-installation.html
# echo "installing golang"
# dnf update -y
# dnf install golang
# mkdir -p $HOME/go
# echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
# source $HOME/.bashrc
# go env GOPATH
# echo "Successfully installed golang"

# link: https://tecadmin.net/install-visual-studio-code-editor-in-fedora/
# echo "installing visual studio code"
# dnf update -y
# vim /etc/yum.repos.d/vscode.repo
# [vscode]
# name=Visual Studio Code
# baseurl=https://packages.microsoft.com/yumrepos/vscode
# enabled=1
# gpgcheck=1
# gpgkey=https://packages.microsoft.com/keys/microsoft.asc

# rpm --import https://packages.microsoft.com/keys/microsoft.asc

# dnf install code

# echo "Successfully installed visual studio"

# link: https://tecadmin.net/install-mysql-8-on-fedora/ or
# https://www.if-not-true-then-false.com/2010/install-mysql-on-fedora-centos-red-hat-rhel/
# echo "installing mysql-8.0"
# dnf install https://dev.mysql.com/get/mysql80-community-release-fc30-1.noarch.rpm
# dnf install mysql-community-server
# systemctl start mysqld.service ## use restart after update
# systemctl enable mysqld.service
# grep 'A temporary password is generated for root@localhost' /var/log/mysqld.log |tail -1
# echo 
# echo "A temporary password has been generated, please update the password"
# echo
# /usr/bin/mysql_secure_installation

# echo "Successfully installed MYSQL-8.0"

# link: https://www.tecmint.com/install-vlc-media-player-in-fedora/
# echo "Installing VLC"
# dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
# dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# dnf install vlc

# echo
# echo "Successfully installed VLC-Media Player"

# echo "installing node"
# dnf update -y
# yum install nodejs
# node -v
# npm -v
# echo "Successfully installed nodejs and npm"

# echo "Installing Git"
# git --version
# read -p "Enter Git username: " user_var
# read -p "Enter Git EmailID: " email_var
# echo -e "$password\n" | sudo -S dnf -y install git

# dnf -y install git
# git config --global user.name "$user_var"
# git config --global user.email "$email_var"
# git config --list

