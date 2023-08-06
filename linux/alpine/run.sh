echo -e "Mise à jour et installation\n"
./alpine_install.sh

# SSh configuration 
ssh-keygen -A
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

echo -e "\n\nAttention, il faut utiliser la commande passwd pour définir un mot de passe pour root (utile pour le serveur SSh\n\n"

echo -e "Bienvenue dans alpine !\n\nVous pouvez installer des paquets avec : apk add <nom_du_paquet>\n\nVous pouvez changer ce message en éditant le fichier /etc/motd.\n\nLancer le serveur SSH avec la commande : /usr/sbin/sshd\n\n" >> /etc/motd

cat bashrc.sh >> ~/.bashrc
source ~/.bashrc

echo -e "Terminé\n"
