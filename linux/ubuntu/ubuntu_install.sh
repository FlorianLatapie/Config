sudo apt update
sudo apt upgrade -y

### logiciels
##    utile

# nano : editeur de texte 
sudo apt install nano -y
# explorateur de fichiers 
sudo apt install ranger -y
# ajouter des couleurs dans le man
sudo apt install most -y
# affiche le nom de la distro 
sudo apt install neofetch -y
# xeyes
sudo apt install x11-apps -y 
# navigateur web en ligne de commandes 
sudo apt install links
# conversion de fichiers windows vers format unix
sudo apt install dos2unix -y
# affiche les stats sur un projet 
sudo apt install cloc -y
# GitHub CLI 
# source : https://github.com/cli/cli/blob/trunk/docs/install_linux.md
echo -e "\nInstall gh\n"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y

## fun

# colorer le cat 
sudo apt install lolcat
# hollywood (des fois fais bugger wsl au moment de l'install)
sudo apt install hollywood

