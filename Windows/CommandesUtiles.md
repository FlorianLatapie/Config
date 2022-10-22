# Commandes utiles Windows

## Lancer WSL en admin sans mot de passe

```cmd
wsl -u root 
```

## Hyper-V

### Activer Hyper-V

```cmd
bcdedit /set hypervisorlaunchtype auto 
```

### Désactiver Hyper-V

```cmd
bcdedit /set hypervisorlaunchtype off
```

## Lancer le Windows Terminal avec un profil

```cmd
wt <nom_du_profil>
```

## Lancer le cmd avec une commande

Source : [cmd | Microsoft Docs](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/cmd)

### Lancer et quitter

```cmd
cmd /c commande
```

### Lancer et attendre

```cmd
cmd /k commande
```
