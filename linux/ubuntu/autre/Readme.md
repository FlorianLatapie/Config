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

## Monter les dossiers partagés de VMware

[Source](https://askubuntu.com/questions/29284/how-do-i-mount-shared-folders-in-ubuntu-using-vmware-tools)

```sh
sudo apt install open-vm-tools open-vm-tools-desktop -y
sudo mkdir /mnt/hgfs
sudo vmhgfs-fuse .host:/ /mnt/hgfs/ -o allow_other -o uid=1000
# sudo chmod 777 /mnt/hgfs
```

## Autres fichiers

- [wsl_run.sh](wsl_run.sh) : Ajoute un appel à `update` au lancement de chaque bash
