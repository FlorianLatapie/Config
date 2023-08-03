#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y

# GitHub CLI 
# source : https://github.com/cli/cli/blob/trunk/docs/install_linux.md
echo -e "\nInstall gh\n"
sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt update
sudo apt upgrade -y

packages=(
    nano
    ranger
    most
    neofetch
    x11-apps
    links
    dos2unix
    cloc
    gedit
    g++
    make
    python3-pip
    gh
    lolcat
    hollywood
    sl
)

for package in "${packages[@]}"; do
    echo -e "\nInstall $package\n"
    sudo apt install "$package" -y
done
