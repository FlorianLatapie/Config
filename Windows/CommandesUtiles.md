# Commandes utiles Windows

## Lancer WSL en admin sans mot de passe

```console
wsl -u root 
```

## Hyper-V

### Activer Hyper-V

```console
bcdedit /set hypervisorlaunchtype auto 
```

### Désactiver Hyper-V

```console
bcdedit /set hypervisorlaunchtype off
```

## Lancer le Windows Terminal avec un profil

```console
wt <nom_du_profil>
```

## Lancer le cmd avec une commande

Source : [cmd | Microsoft Docs](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/cmd)

### Lancer et quitter

```console
cmd /c commande
```

### Lancer et attendre

```console
cmd /k commande
```

## Dossier contenant toutes les applications (même celles installées par le Windows Store)

Lancez "Exécuter" : `Win` + `R`
Puis entrez :

```console
shell:AppsFolder
```
