echo -e "Mise à jour et installation\n"
./termux_install.sh
cat bashrc.sh >> ~/.bashrc

cp -r .shortcuts /data/data/com.termux/files/home

source ~/.bashrc

echo -e "\nUse command 'termux-setup-storage' to create '~/storage' folder\nTerminé\n"
