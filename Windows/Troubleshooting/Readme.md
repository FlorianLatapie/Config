# Commandes utiles

## Fichier(s) corrompu(s) sur le disque

Si un fichier n'est pas supprimable même en administrateur : il pourrait être corrompu.

[À lancer en administrateur](../RaccourcisClavier.md#Lancer-le-cmd-en-administrateur) :

```cmd
chkdsk c: /f /r
```

## Relancer les drivers graphiques

`Win` + `Ctrl` + `Shift` + `B`

(un bip retentit pour informer que l'opération a bien été effectuée)

## L'écran tactile touche le mauvais écran

Source : [SOLVED: Touchscreen Touches Go To The Wrong Monitor](https://www.urtech.ca/2014/04/solved-touchscreen-touches-go-to-the-wrong-monitor/)

- Panneau de configuration
- Matériel et audio
- Paramètres du Tablet PC,
  - Dans la catégorie `Options d'affichage` cliquez sur `Configurer...`
    - Suivez les instructions  
      (si l'écran est le bon, touchez-le, sinon appuyez sur la touche `Entrée` pour naviguer jusqu'à l'écran voulu)

## Éviter l'auto détéction de la version de l'OS OEM pendant l'installation de Windows

Si un ordinateur possède la clé d'installation Windows dans son BIOS, Windows va tenter d'auto détecter la version

[[Fix] Unable to Select Windows 10 Pro Edition During Clean Installation](https://www.askvg.com/fix-cant-select-windows-10-pro-edition-during-clean-installation/)
