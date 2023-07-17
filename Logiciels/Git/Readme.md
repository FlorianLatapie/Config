# Commandes Git utiles

## Forcer la mise a jour d'un dépôt de origin/main vers sa copie locale

```sh
git fetch --all
git reset --hard origin/main
git checkout -- .
```

## Supprimer le dernier commit (de force)

```sh
git reset --hard HEAD^

git push --force
```

## Se connecter à git

```sh
git config --global user.name "<nom>"
git config --global user.email "<email>"
git config --global credential.helper store
git config --global credential.helper 'cache --timeout=3600'
```

## Changer l'emplacement de la "HEAD"

```sh
git log

git checkout <sha1 du commit>
```

## Importer un dépôt (pour faire un fork privé par exemple)

Source : [GitHub: How to make a fork of public repository private?](https://stackoverflow.com/q/10065526)

- Créer un dépôt
- Cliquer sur [Import a repository.](https://github.com/new/import)
- Entrer l'URL du dépôt à importer
- Cliquer sur `Begin import`

Une solution en ligne de commande est possible et est donnée dans la source.

## Mettre à jour le `.gitignore` et supprimer les anciens fichiers

Source : [How do I make Git forget about a file that was tracked, but is now in .gitignore?](https://stackoverflow.com/a/19095988)

Trouver de bons .gitignore : [github.com/github/gitignore](https://github.com/github/gitignore)

Une fois le `.gitignore` créé, avant de `push` utilisez cette commande : cela supprimera les fichiers maintenant ignorés sur le serveur Git

```sh
git rm -r --cached .
git add .
```

Et enfin

```sh
git commit -am "Suppression des fichiers ignorés"
```

## Changer le nom d'un ancien commit

Source : [How to Change a Git Commit Message | Linuxize](https://linuxize.com/post/change-git-commit-message/)

```sh
git rebase -i HEAD~<nombre de commits a remonter>
```

Il doit être affiché un éditeur de texte avec les commits à modifier. Il faut remplacer `pick` par `reword` pour le commit à modifier.

Exemple :

```txt
pick <sha du commit> mon commit à modifier
```

Changement de `pick` en `reword` :

```txt
reword <sha du commit> mon commit à modifier
```

Pour chaque commit noté `reword`, il faut modifier le message de commit, puis sauvegarder et quitter l'éditeur de texte.

Enfin, il faut forcer le commit :

```sh
git push --force
```
