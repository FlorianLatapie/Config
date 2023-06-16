#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y

### logiciels
##    utile

# nano : éditeur de texte
echo -e "\nInstall nano\n"
sudo apt install nano -y
# explorateur de fichiers
echo -e "\nInstall ranger\n"
sudo apt install ranger -y
# ajouter des couleurs dans le man
echo -e "\nInstall most\n"
sudo apt install most -y
# affiche le nom de la distro
echo -e "\nInstall neofetch\n"
sudo apt install neofetch -y
# xeyes
echo -e "\nInstall x11-apps\n"
sudo apt install x11-apps -y 
# navigateur web en ligne de commandes 
echo -e "\nInstall links\n"
sudo apt install links -y
# conversion de fichiers windows vers format unix
echo -e "\nInstall dos2unix\n"
sudo apt install dos2unix -y
# affiche les stats sur un projet 
echo -e "\nInstall cloc\n"
sudo apt install cloc -y
# GitHub CLI 
# source : https://github.com/cli/cli/blob/trunk/docs/install_linux.md
echo -e "\nInstall gh\n"
sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
# éditeur de texte graphique 
echo -e "\nInstall gedit\n"
sudo apt install gedit -y
# compilateur C++
echo -e "\nInstall g++\n"
sudo apt install g++ -y

echo -e "\nInstall make\n"
sudo apt install make -y


## fun

# colorer le cat 
echo -e "\nInstall lolcat\n"
sudo apt install lolcat -y 
# hollywood 
# info :(des fois fais bugger wsl au moment de l'installation)
echo -e "\nInstall hollywood\n"
sudo apt install hollywood -y 
# sl : fausse commande ls quand on se trompe 
echo -e "\nInstall sl\n"
sudo apt install sl -y
