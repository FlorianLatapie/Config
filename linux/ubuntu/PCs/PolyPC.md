# Config pour le PolyPC

## Écran
Source : [Gnome fractional scaling below 100%](https://askubuntu.com/questions/82707/how-to-disable-gnome-fractional-scaling-below-100)

### Installer
 - Lancer la commande 
```sh
xrandr --listmonitors
```
le resultat est :
```
Monitors: 1
 0: +*eDP-1 1776/309x999/173+0+0  eDP-1
```
L'écran est : eDP-1

- Ouvrir le fichier `/etc/xdg/autostart/.desktop`
```
sudo gedit /etc/xdg/autostart/.desktop
```

- Ajouter les lignes suivantes :

(Un nombre plus grand que 1 augmente la résolution de l'écran, les éléments sont plus petits)
```
[Desktop Entry]
Type=Application
Name=xrandr
Exec=xrandr --output eDP-1 --scale 1.3x1.3
OnlyShowIn=GNOME;
``` 
### Desinstaller
j
- Supprimer le fichier `/etc/xdg/autostart/.desktop`
