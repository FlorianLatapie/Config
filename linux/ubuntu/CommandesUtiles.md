# Commandes utiles linux

Changer les extensions de fichiers en utilisant le programme `rename`
```sh
sudo apt install rename
```
Pour renommer tous les fichiers finissant par `.java.txt` en `.java`
```sh 
rename "s/.java.txt$/.java/" *.txt   
```