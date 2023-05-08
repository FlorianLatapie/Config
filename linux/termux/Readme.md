# Android (Termux)

Dans ce dossier est contenu les fichiers de configuration pour l'installation de Termux sur Android.

## Lancer

Lancez la commande

```sh
./run.sh 
```

## Nouvelle installation

Lancez les commandes

```sh
apt update
apt upgrade -y

apt install git -y

git clone https://github.com/FlorianLatapie/Config.git

cd Config/linux/termux
chmod u+x run.sh
./run.sh
```
