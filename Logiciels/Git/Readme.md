# Commandes Git utiles

## Supprimer le dernier commit (de force)
```sh 
git reset --hard HEAD^
```
```
git push --force
```
## Changer l'emplacement de la "HEAD"
```sh
git log
```
```sh
git checkout <sha1 du commit>
```

## Importer un dépot (pour faire un fork privé par exemple)
Source : [GitHub: How to make a fork of public repository private?](https://stackoverflow.com/questions/10065526/github-how-to-make-a-fork-of-public-repository-private)

- Créer un dépot
- Cliquer sur [Import a repository.](https://github.com/new/import)
- Entrer l'url du dépot à importer
- Cliquer sur `Begin import`

Une solution en ligne de commande est possible est est donnée dans la source.