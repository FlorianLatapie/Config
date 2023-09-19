# Commandes utiles Windows

## Lancer WSL en admin sans mot de passe

```bash
wsl -u root 
```

## Hyper-V

### Activer Hyper-V

```bash
bcdedit /set hypervisorlaunchtype auto 
```

### Désactiver Hyper-V

```bash
bcdedit /set hypervisorlaunchtype off
```

## Lancer le Windows Terminal avec un profil

```bash
wt <nom_du_profil>
```

## Lancer le cmd avec une commande

Source : [cmd | Microsoft Docs](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/cmd)

### Lancer et quitter

```bash
cmd /c commande
```

### Lancer et attendre

```bash
cmd /k commande
```

## Dossier contenant toutes les applications (même celles installées par le Windows Store)

Lancez "Exécuter" : `Win` + `R`
Puis entrez :

```bash
shell:AppsFolder
```

## Afficher le `PATH`

Dans le Powershell

```bash
echo $env:PATH
```
