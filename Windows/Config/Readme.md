# Config pour Windows 🐱‍👤

- [Config pour Windows 🐱‍👤](#config-pour-windows-)
  - [Bouton `Mettre en veillle prolongée` dans le menu démarrer](#bouton-mettre-en-veillle-prolongée-dans-le-menu-démarrer)
  - [Changer la taille de la barre des taches Windows 11](#changer-la-taille-de-la-barre-des-taches-windows-11)
  - [Lancer l'Outil Capture d'écran avec la touche "Imprimer l'écran"](#lancer-loutil-capture-décran-avec-la-touche-imprimer-lécran)
  - [Windows Sandbox](#windows-sandbox)
  - [Se connecter (W10) / Affichage sans fil (W11) (récepteur Miracast)](#se-connecter-w10--affichage-sans-fil-w11-récepteur-miracast)
  - [Éclairage nocturne](#éclairage-nocturne)
  - [Changer le niveau d'avertissement UAC (User Account Control)](#changer-le-niveau-davertissement-uac-user-account-control)

## Bouton `Mettre en veillle prolongée` dans le menu démarrer

- Panneau de configuration
- Matériel et audio
- Options d'alimentation
  - Choisir l'action des boutons d'alimentation
  - Modifier les paramètres actuellement non disponibles
  - Cocher `Veille prolongée`

Si indisponible, voici la commande 

```cmd
shutdown -h
```

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

## Se connecter (W10) / Affichage sans fil (W11) (récepteur Miracast)

Si vous travaillez sur un PC Windows et que vous voulez que les applications et le contenu d’un autre appareil
apparaissent sur l’écran de votre PC, vous pourrez utiliser la mise en miroir de l’écran de votre appareil ou la
projection sur votre PC. Notez que vous avez besoin d’un appareil qui prend en charge
Miracast. [Source](https://support.microsoft.com/fr-fr/windows/mise-en-miroir-de-l-%C3%A9cran-et-projection-sur-votre-pc-5af9f371-c704-1c7f-8f0d-fa607551d09c#ID0EBD=Windows_10)

- Paramètres
- Système
- Fonctionnalités facultatives
  - Dans Ajouter une fonctionnalité facultative, cliquez sur `Afficher les fonctionnalités`
    - Cherchez `Affichage sans fil`, cochez et installez

Utilisation : 

- Dans le receveur Miracast, lancer l'application `Se connecter` (W10) / `Affichage sans fil` (W11)
- Dans l'autre appareil, faites `Windows + K` et connectez-vous à l'appareil
  - Il est possible d'autoriser l'entrée clavier/souris depuis le panneau `Connecter`  
  - Si cet appareil est sous Windows 10, il est possible de modifier la latence depuis la barre affichée en haute de l'écran, cliquez sur l'engrenage puis sur `Le jeu`, sinon, sur Windows 11, changez les paramètres de batterie sur `Performances élevées` pour réduire la latence

## Éclairage nocturne

- Paramètres
- Système
  - Écran
    - Éclairage nocturne / Paramètres d'éclairage nocturne
      - Intensité : 80
      - Planifier : Activé, Du coucher au lever du soleil

## Changer le niveau d'avertissement UAC (User Account Control)

- Panneau de configuration
- Comptes d'utilisateurs
- Modifier les paramètres de contrôle de compte d'utilisateur