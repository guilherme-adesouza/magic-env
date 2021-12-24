# DOCKER #
## Remove docker
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

## Docker core
sudo dnf -y install dnf-plugins-core

## Add docker repo
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

## Install
sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo dnf -y install docker-compose

## Test docker
sudo systemctl start docker
sudo docker run hello-worldsudo 

# BRAVE #
## Install deps
dnf install -y dnf-plugins-core

## Add brave repo
sudo dnf config-manager \
    --add-repo \
    https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

## Install
sudo dnf install -y brave-browser

# VSCODE #
## Add repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 
  'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

## Update cache 
dnf check-update

## Install
sudo dnf install -y code
## Install extensions
code --install-extension ms-azuretools.vscode-docker 
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension yzhang.markdown-all-in-one
code --install-extension eamodio.gitlens
code --install-extension jebbs.plantuml
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension xabikos.javascriptsnippets
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension vscjava.vscode-java-pack

# GIT #
sudo dnf install git
git config --global user.email "guilherme.souza2@universo.univates.br"
git config --global user.name "guilherme-adesouza"

# PIP #
sudo dnf install python3-pip