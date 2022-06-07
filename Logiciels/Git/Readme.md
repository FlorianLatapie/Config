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

## Importer un dépôt (pour faire un fork privé par exemple)
Source : [GitHub: How to make a fork of public repository private?][make repository private link]

- Créer un dépôt
- Cliquer sur [Import a repository.](https://github.com/new/import)
- Entrer l'URL du dépôt à importer
- Cliquer sur `Begin import`

Une solution en ligne de commande est possible et est donnée dans la source.

[make repository private link]: https://stackoverflow.com/q/10065526