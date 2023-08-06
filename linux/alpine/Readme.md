# Alpine linux

Dans ce dossier est contenu les fichiers de configuration pour l'installation d'Alpine Linux, spécifiquement pour iSH
sur iOS.

## Lancer

Lancez la commande

```sh
./run.sh 
```

## Nouvelle installation

Lancez les commandes

```sh
apk update
apk upgrade

apk add git

git clone https://github.com/FlorianLatapie/Config.git
```

## Random infos

### ash et listes

Source : [How to port to bash-style arrays to ash?](https://unix.stackexchange.com/questions/384614/how-to-port-to-bash-style-arrays-to-ash)

`ash`, le shell d'Alpine ne supporte pas les listes, on peut donc utiliser une string, le for sépare les éléments par des espaces

```sh
list="a b c"

for thing in $list ; do # Note: ne pas mettre de guillemets autour de $services ici.
  echo "$thing"
done
```

### Tuto serveur SSh

[GitHub/ish-app/ish -> Wiki/Running an SSH server](https://github.com/ish-app/ish/wiki/Running-an-SSH-server)
