# Android (Termux)

Dans [ce dossier](https://github.com/FlorianLatapie/Config/tree/main/linux/termux), sont contenus les fichiers de configuration pour l'installation de Termux sur Android.

## Lancer

Lancez la commande

```sh
./run.sh 
```

## Nouvelle installation

Téléchargez Termux sur depuis F-Droid depuis ce lien :  
[Termux | F-Droid - Free and Open Source Android App Repository](https://f-droid.org/packages/com.termux/)

Lancez les commandes

```sh
yes | apt update
yes | apt upgrade -y
apt install git -y
```

```sh
git clone https://github.com/FlorianLatapie/Config.git
```

```sh
cd Config/linux/termux
chmod u+x termux_install.sh
chmod u+x run.sh
./run.sh
```

Make the shortcuts work
```
gh auth login
mkdir ~/storage/downloads/termux
cd ~/storage/downloads/termux
gh repo clone florianlatpie/config
