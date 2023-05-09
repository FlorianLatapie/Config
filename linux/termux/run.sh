echo -e "Mise à jour et installation\n"
./termux_install.sh
cat bashrc.sh > ~/.bashrc

echo -e "Terminé\n"

echo -e "Lancement d'un nouveau bash\n"
bash
