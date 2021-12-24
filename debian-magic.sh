#!/bin/bash

## Pull dependencies
apt-get install software-properties-common \
			apt-transport-https \
			wget \
			ca-certificates \
			curl \
			gnupg-agent -y

# VSCode dependencies
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Docker dependecies
# apt-get remove docker docker-engine docker.io containerd runc -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# $(lsb_release -cs) not working in Linux Mint 19.3 (tricia)
#add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   xenial \
   stable"


# update repos
apt-get update


# git
apt-get install git -y
git config --global user.name "guilherme-adesouza"
git config --global user.email "guilherme.souza2@universo.univates.br"

## Editors

# VSCode
apt-get install code -y


## Tools

# Docker
apt-get install docker-ce docker-ce-cli containerd.io -y
groupadd docker
usermod -aG docker $USER 

# Docker Compose 
apt-get install docker-compose

# Pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# Postman
sudo flatpak install flathub com.getpostman.Postman -y

#Chrome
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome.deb
apt-get install -f -y