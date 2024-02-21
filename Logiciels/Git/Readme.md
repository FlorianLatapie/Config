# Commandes Git utiles

- [Commandes Git utiles](#commandes-git-utiles)
  - [Forcer la mise à jour d'un dépôt de origin/main vers sa copie locale](#forcer-la-mise-a-jour-dun-dépôt-de-originmain-vers-sa-copie-locale)
  - [Supprimer le dernier commit (de force)](#supprimer-le-dernier-commit-de-force)
  - [Se connecter à git](#se-connecter-à-git)
  - [Changer l'emplacement de la "HEAD"](#changer-lemplacement-de-la-head)
  - [Importer un dépôt](#importer-un-dépôt)
  - [Mettre à jour le `.gitignore` et supprimer les anciens fichiers](#mettre-à-jour-le-gitignore-et-supprimer-les-anciens-fichiers)
  - [Changer le nom d'un ancien commit](#changer-le-nom-dun-ancien-commit)
  - [Cloner un très gros dépôt](#cloner-un-très-gros-dépôt)
  - [Comment utiliser les submodules Git](#comment-utiliser-les-submodules-git)
    - [Ajouter un submodule à un dépôt](#ajouter-un-submodule-à-un-dépôt)
    - [Cloner un dépôt avec des submodules](#cloner-un-dépôt-avec-des-submodules)
    - [Commits](#commits)
      - [Push](#push)
      - [Pull](#pull)

## Forcer la mise à jour d'un dépôt de origin/main vers sa copie locale

```sh
git fetch --all ; git reset --hard origin/main ; git checkout -- .
```

## Supprimer le dernier commit (de force)

```sh
git reset --hard HEAD^
```

```sh
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

## Importer un dépôt

Par exemple pour faire un fork public d'un dépot privé

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

## Cloner un très gros dépôt

[Source](https://stackoverflow.com/questions/38618885/error-rpc-failed-curl-transfer-closed-with-outstanding-read-data-remaining)

Erreur que j'ai eu :

```txt
error: RPC failed; curl ...
error: ... bytes of body are still expected
fetch-pack: unexpected disconnect while reading sideband packet
fatal: early EOF
fatal: fetch-pack: invalid index-pack output
```

Solution :

```sh
git clone http://github.com/large-repository --depth 1
cd large-repository
git fetch --unshallow
```

## Comment utiliser les submodules Git

Sources :

- [Git Submodules basic explanation par gitaarik](https://gist.github.com/gitaarik/8735255)
- [Git - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

### Ajouter un submodule à un dépôt

Dans le dossier git du dépôt parent, lancer la commande :

```sh
git submodule add <url>
```

Cette commande va créer un nouveau dossier avec le nom du dépôt

ou

```sh
git submodule add <url> <nom du dossier>
```

### Cloner un dépôt avec des submodules

```sh
git clone --recurse-submodules <url>
```

### Commits

#### Push

```sh
git push --recurse-submodules=on-demand
```

#### Pull

```sh
git pull --recurse-submodules
```

Si vous utilisez l'application GitHub Desktop, n'oubliez pas de push les submodules puis de push le dépôt parent.
