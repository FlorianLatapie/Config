#!/usr/bin/env bash

fichier="/etc/xdg/autostart/.desktop"
NB_LIGNES=$(cat $fichier | wc -l)

if [ "$NB_LIGNES" -ne 5 ]; then
	echo "Il n'y a pas 5 lignes dans le fichier, rien n'est supprimé"
else
	echo "Suppression de la configuration"
	sudo echo "" >$fichier
fi
