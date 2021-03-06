#!/usr/bin/env bash

apk update
apk upgrade

### logiciels ###
##    utile    ##

# nano : éditeur de texte
echo -e "\nInstall nano\n"
apk add nano

# explorateur de fichiers 
echo -e "\nInstall ranger\n"
apk add ranger

# explorateur de fichiers 
echo -e "\nInstall mc\n"
apk add mc

# affiche le nom de la distro 
echo -e "\nInstall neofetch\n"
apk add neofetch

# navigateur web en ligne de commande
echo -e "\nInstall links\n"
apk add links 

# GitHub CLI 
echo -e "\nInstall gh\n"
apk add github-cli