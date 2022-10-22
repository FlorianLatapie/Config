# Config pour Windows 🐱‍👤

## Changer la taille de la barre des taches Windows 11

- `Windows + R`
- Tapez `regedit`
- Naviguez vers `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced`
- Ajouter une nouvelle valeur de type `Valeur DWORD (32 bits)`
- Nommer la valeur `TaskbarSi`
- Entrez la valeur `0` pour petit, `1` pour moyen (défaut), `2` pour grand (base : Hexadécimale)
- Relancez l'explorateur Windows (explorer.exe)

## Lancer l'Outil Capture d'écran avec la touche "Imprimer l'écran"

- Ouvrir les paramètres de Windows
- `Accessibilité`
- `Clavier`
- Activer `Utiliser le bouton Imprimer l'écran pour ouvrir capture d'écran`

## Windows Sandbox

N'est disponible que sous Windows Pro.

Bac à sable Windows fournit un environnement de bureau léger pour exécuter en toute sécurité des applications de manière
isolée. Les logiciels installés à l’intérieur de l’environnement Bac à sable Windows restent « en bac à sable » et
s’exécutent séparément de l’ordinateur
hôte. [Source](https://docs.microsoft.com/fr-fr/windows/security/threat-protection/windows-sandbox/windows-sandbox-overview)

- Chercher dans le menu démarrer `Activer ou désactiver des fonctionnalités Windows`
- Cocher `Bac à sable Windows` et `Plateforme d'ordinateur virtuel`
- Cliquer sur Ok
- Redémarrer

## Se connecter

Si vous travaillez sur un PC Windows et que vous voulez que les applications et le contenu d’un autre appareil
apparaissent sur l’écran de votre PC, vous pourrez utiliser la mise en miroir de l’écran de votre appareil ou la
projection sur votre PC. Notez que vous avez besoin d’un appareil qui prend en charge
Miracast. [Source](https://support.microsoft.com/fr-fr/windows/mise-en-miroir-de-l-%C3%A9cran-et-projection-sur-votre-pc-5af9f371-c704-1c7f-8f0d-fa607551d09c#ID0EBD=Windows_10)

- Chercher dans le menu démarrer `Gérer les fonctionalités facultatives`
- Cliquer sur `Ajouter une fonctionnalité`
- Cocher `Affichage sans fil`
- Cliquer sur `Installer`
