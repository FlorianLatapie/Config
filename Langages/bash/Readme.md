# bash cheatsheet

- [bash cheatsheet](#bash-cheatsheet)
  - [Début de fichier](#début-de-fichier)
  - [Arguments de la ligne de commande](#arguments-de-la-ligne-de-commande)
  - [Boucles for](#boucles-for)
    - [foreach](#foreach)
    - [for i](#for-i)
  - [Boucles while](#boucles-while)
  - [Conditions](#conditions)
  - [Fonctions](#fonctions)
    - [Fonctions avec arguments](#fonctions-avec-arguments)
  - [Listes](#listes)


## Début de fichier

```sh
#!/usr/bin/env bash
```

Explication (par Tom "zdimension" Niget): Sur Unix/Linux, quand lance un fichier, l'OS va lire le début du fichier pour
détecter une signature en entête.

- Si c'est un fichier binaire, l'OS va le lancer directement.
- Sinon il va vérifier si le fichier commence par un shebang (`#!`), si c'est le cas, il va lancer le programme
correspondant.

Par exemple, si le fichier commence par `#!/usr/bin/env bash`, il va lancer la
commande : `/usr/bin/env bash <nom_du_fichier>` de manière que le programme se lance en tant que programme exécutable.

<!-- Source
https://discord.com/channels/@me/918521361280933928/983449913562112110 
-->

- echo avec retour à la ligne

```sh
echo -e "Première ligne\nDeuxième ligne"
```

Sortie :

```txt
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

```txt
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

## Boucles while

```sh
i=0
while [ $i -lt 3 ]
do
    echo $i
    i=$((i+1))
done
```

Sortie :

```sh
0
1
2
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

| bash  | Symbole | Définition          |
|-------|---------|---------------------|
| `-eq` | =       | égal à              |
| `-ne` | !=      | différent de        |
| `-gt` | >       | supérieur à         |
| `-lt` | <       | inférieur à         |
| `-ge` | >=      | supérieur ou égal à |
| `-le` | <=      | inférieur ou égal à |

## Fonctions

```sh
function maFonction(){
    echo "Fonction !"
}

maFonction
```

Sortie :

```txt
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

```txt
Fonction avec 3 arguments
```

## Listes

```sh
ma_liste = ( "a" "b" "c d" )

for thing in "${ma_liste[@]}" ; do
  echo "$thing"
done
```

Sortie :

```txt
a
b
c d
```

Certains shells comme [ash](https://fr.wikipedia.org/wiki/Almquist_shell) ne supportent pas les listes, on peut donc utiliser une string, le for sépare les éléments par des espaces.

Cf. [Linux/Alpine/Readme.md#ash et listes](../../linux/alpine/Readme.md#ash-et-listes)
