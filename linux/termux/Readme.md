# Android (Termux)

Dans ce dossier est contenu les fichiers de configuration pour l'installation de Termux sur Android.

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
apt update
apt upgrade -y
```


```sh
apt install git -y
```


```sh
git clone https://github.com/FlorianLatapie/Config.git
```

```sh
cd Config/linux/termux
chmod u+x run.sh
./run.sh
```
