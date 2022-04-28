# Commandes utiles 

## Fichier(s) corrompu(s) sur le disque 
Si un fichier n'est pas supprimable même en sudo il pourrait être corrompu

À [lancer en admin](/Windows/Raccourcis.md#Lancer-le-cmd-en-administrateur) : 
```cmd
chkdsk c: /f /r
``` 
