#!/usr/bin/env bash

echo -e "Mise à jour et installation\n"
./ubuntu_install.sh

echo -e "Ajout de la config dans le .bashrc\n"
cat bashrc_cours.txt >> ~/.bashrc
cat bashrc.txt >> ~/.bashrc

echo -e "Terminé\n"

# On relance le bash pour que les commandes soient prises en compte
# lolcat notamment 
bash