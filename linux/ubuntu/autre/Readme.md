# Autre

## Installation manuelle d'extensions GNOME

L'environnement de bureau GNOME est installé par défaut et possède des extensions qui s'installent depuis le site
officiel de GNOME.

La commande suivante permet de les installer, elle lance une fenêtre Google Chrome pour pouvoir les activer :

```sh
./ubuntu_gnome_extensions.sh
```	

## Installation de GitHub CLI 
```sh 
# GitHub CLI 
# source : https://github.com/cli/cli/blob/trunk/docs/install_linux.md
echo -e "\nInstall gh\n"
sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
```	

## Autres fichiers 
- [wsl_run.sh](wsl_run.sh) : Ajoute un appel a `update` au lancement de chaque bash