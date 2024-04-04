# Commandes utiles linux

## Changer les extensions de fichiers en utilisant le programme `rename`

```sh
sudo apt install rename
```

Pour renommer tous les fichiers finissant par `.java.txt` en `.java`

```sh
rename "s/.java.txt$/.java/" *.txt   
```

## Changer le mot de passe d'un utilisateur

```sh
sudo passwd <nom_utilisateur>
```

## Chercher un fichier dans un dossier

```sh
find <dossier> -name <nom_du_fichier> 2>/dev/null
```

## Créer un dossier et entrer dedans

```sh
mkdir my_directory && cd $_
```

## Installer les drivers pour VM

[source](https://docs.vmware.com/en/VMware-Tools/12.3.0/com.vmware.vsphere.vmwaretools.doc/GUID-8B6EA5B7-453B-48AA-92E5-DB7F061341D1.html)

En utilisant `apt` :

```sh
sudo apt install open-vm-tools
```

VM avec une GUI et `apt` :

```sh
sudo apt install open-vm-tools open-vm-tools-desktop
```
