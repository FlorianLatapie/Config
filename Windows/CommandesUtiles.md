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
