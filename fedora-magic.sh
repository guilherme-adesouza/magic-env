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
sudo dnf install docker-ce docker-ce-cli containerd.io

## Test docker
sudo systemctl start docker
sudo docker run hello-worldsudo 

# BRAVE #
## Install deps
dnf install dnf-plugins-core

## Add brave repo
sudo dnf config-manager \
    --add-repo \
    https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

## Install
sudo dnf install brave-browser

# VSCODE #
## Add repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 
  'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

## Update cache 
dnf check-update

## Install
sudo dnf install code