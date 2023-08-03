echo -e "Mise à jour et installation\n"
./alpine_install.sh
cat bashrc.sh >> ~/.bashrc

source ~/.bashrc

echo -e "Terminé\n"
