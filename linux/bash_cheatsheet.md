# bash cheatsheet

## Début de fichier 
```sh	
#!/bin/bash
```
- echo avec retour à la ligne 
```sh
echo -e "Première ligne\nDeuxième ligne"
```
Sortie : 
```sh
Première ligne
Deuxième ligne
```


## Arguments de la ligne de commande 
```sh
echo -e "nb arguments : $# (argc en C)"
echo -e "arguments : $* (argv en C)"
echo -e "premier argument : $1"
```
Utilisation : 
```sh
./script.sh arg1 arg2 arg3
```
Sortie : 
```sh
nb arguments : 3 (argc en C)
arguments : arg1 arg2 arg3 (argv en C)
premier argument : arg1
```

## Boucles for
### foreach
```sh
for i in $*
do
    echo $i
done
```
Utilisation : 
```sh
./script.sh arg1 arg2 arg3
```
Sortie : 
```sh
arg1
arg2
arg3
```
### for i 
```sh
for i in {1..3}
do
    echo $i
done
```
Sortie : 
```sh
1
2
3
```

## Conditions 
```sh
if [ $# -eq 0 ]
then
    echo "Aucun argument"
elif [ $# -eq 1 ]
then
    echo "Un seul argument"
else
    echo "Plusieurs arguments"
fi
```

Table de conversion : 
| bash   | Symbole | Définition          |
|--------|---------|---------------------|
| `-eq`  | =       | égal à              |
| `-ne`  | !=      | différent de        |
| `-gt`  | >       | supérieur à         |
| `-lt`  | <       | inférieur à         |
| `-ge`  | >=      | supérieur ou égal à |
| `-le`  | <=      | inférieur ou égal à |

## Fonctions 
```sh
function maFonction(){
    echo "Fonction !"
}

maFonction
```
Sortie : 
```sh
Fonction !
```
### Fonctions avec arguments 
```sh
function maFonction(){
    echo "Fonction avec $# arguments"
}

maFonction arg1 arg2 arg3
```
Sortie : 
```sh
Fonction avec 3 arguments
```