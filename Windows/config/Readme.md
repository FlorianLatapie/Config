# Config pour Windows 🐱‍👤 

## Changer la taille de la barre des taches Windows 11
- `Windows + R`
- Tapez `regedit`
- Naviguez vers `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced`
- Ajouter une nouvelle valeur de type `Valeur DWORD (32 bits)`
- Nommer la valeur `TaskbarSi`
- Entrez la valeur `0` pour petit, `1` pour moyen (défaut), `2` pour grand (base : Hexadécimale)
- Relancez l'explorateur Windows (explorer.exe)

## Lancer l'Outil Capture d'écran avec la touche impr écr 
- Ouvrir les paramètres de Windows 
- `Accessibilité`
- `Clavier`
- Activer `Utiliser le bouton Imprimer l'écran pour ouvrir capture d'écran`
