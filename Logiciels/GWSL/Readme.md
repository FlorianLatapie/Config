# GWSL

## Informations

Fonctionne selon les versions et les OS ?

|     OS     | WSL1 | WSL2 |
|:----------:|:----:|:----:|
| Windows 10 | Oui  | Oui  |
| Windows 11 | Non  | Oui  |

## Installation

- Télécharger GWSL depuis le Microsoft
  store : [GWSL par Opticos Studios](https://www.microsoft.com/store/productId/9NL6KD1H33V3)
- Lancer
- Une fenêtre s'affiche : "Allow GWSL Firewall Access", Cliquer sur `Ok`
- Autoriser l'alerte de sécurité windows
- Si "Check out my new app ! ..." est affiché, cliquer sur `Don't Show Again`
- Cliquer sur GWSL Distro Tools
- Cliquer sur `Auto-Export Display/Audio`
- Une fenêtre "Restart Machine?" s'ouvre, cliquer sur `Oui`

## Utilisation

⚠ Attention : le premier lancement d'une application peut être long. (10 secondes environ)

- Lancer GWSL dans Windows
- Lancer une application graphique

```sh
sudo apt-get install x11-apps -y
```

```sh
xeyes
```
