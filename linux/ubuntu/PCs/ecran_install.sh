#!/usr/bin/env bash

# Constantes
fichier="/etc/xdg/autostart/.desktop"

# Méthodes
remplirFichier() {
	nb_lignes=$(cat $fichier | wc -l)
	if [ "$nb_lignes" -ne 0 ]; then
		echo "Le fichier n'est pas vide :"
		cat $fichier
		echo -e "\nRemplacer ? (o/n)"
		read -r reponse
		if [ "$reponse" = "o" ]; then
			echo "remplissage du fichier"
		else
			echo "Arrêt de l'installation"
			exit
		fi
	fi
	sudo sh -c " echo -e '[Desktop Entry]\nType=Application\nName=xrandr\nExec=xrandr --output $1 --scale $2x$2\nOnlyShowIn=GNOME' >$fichier"
}

appliquerEchelle() {
	xrandr --output "$1" --scale "$2"x"$2"
}

# Début du script

lister_ecrans=$(xrandr --listmonitors)

echo -e "Écrans détectés :\n"
echo "$lister_ecrans"
echo -e ""

nb_lignes_de_lister_ecrans=$(echo "$lister_ecrans" | wc -l)
if [ "$nb_lignes_de_lister_ecrans" -eq 2 ]; then
	num_ecran=2
else
	echo "Il y a plus d'un écran détecté, renseignez le numéro de l'écran interne :"
	read -r num_ecran
	num_ecran=$(expr "$num_ecran" + 2)
fi

liste_ecrans_ligne_n=$(echo "$lister_ecrans" | sed -n "$num_ecran"'p')
nom_ecran=${liste_ecrans_ligne_n##* }

echo "Quelle échelle ?"
read -r scale

remplirFichier "$nom_ecran" "$scale"
appliquerEchelle "$nom_ecran" "$scale"

echo -e "\nInstallation terminée"
