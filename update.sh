#! /usr/bin/bash

echo "Installation starts"

read -sp "Enter Root Password: " password
echo

echo "installing visual studio code"
echo -e "$password\n" | sudo -S dnf update -y
vim /etc/yum.repos.d/vscode.repo
[vscode]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc

echo -e "$password\n" | sudo -S rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "$password\n" | sudo -S dnf install code

echo "Successfully installed visual studio"