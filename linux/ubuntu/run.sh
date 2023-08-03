#!/usr/bin/env bash

echo -e "Mise à jour et installation\n"
./ubuntu_install.sh

echo -e "Ajout de la config dans le .bashrc\n"
cat bashrc_cours.sh >> ~/.bashrc
cat bashrc.sh >> ~/.bashrc

source ~/.bashrc

echo -e "Terminé\n"