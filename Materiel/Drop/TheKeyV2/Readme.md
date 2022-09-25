# Stack Overflow The Key macropad

## Configurer le clavier

Source : [How to Configure Stack Overflow The Key and The Key V2 Macropad? | Drop](https://drop.com/talk/93641/how-to-configure-stack-overflow-the-key-macropad)

Ce clavier utilise la technologie QMK, le tuto qui suit est une traduction et amélioration du tutoriel
de [drop.com](https://drop.com/) en y ajoutant les fonctionnalités supplémentaires de la V2 du clavier.

Ce tutoriel est en deux parties indépendantes :

- Création du firmware à partir de zéro
- Installation du firmware fourni ou créé

### Créer le firmware du clavier

- Télécharger le fichier JSON donné par drop.com ici : [docs.drop.com/thekey.json](https://docs.drop.com/thekey.json) ou
  utilisez le fichier [TheKeyV2.json](TheKeyV2.json)
- Allez sur le site web : [kbfirmware.com](https://kbfirmware.com/)

#### Onglet `SETTINGS`

Vérifiez que `WS2812` soit bien à `5` (2 LEDs dans la base puis 1 LED par touche)

#### Onglet `KEYMAP`

Disposition que nous allons appliquer :

|         |    Stack Overflow    |         C         |         V          |
|---------|:--------------------:|:-----------------:|:------------------:|
| Layer 0 | Passer à la couche 1 | Changer thème RGB | Changer nuance RGB |
| Layer 1 |         Rien         |     Ctrl + C      |      Ctrl + V      |

|         | Stack Overflow |    C     |    V     |
|---------|:--------------:|:--------:|:--------:|
| Layer 0 |     MO(1)      | RGB_MOD  | RGB_HUI  | 
| Layer 1 |    KC_TRNS     | MACRO(0) | MACRO(1) |

**Modification touches**

Layer 0 :
Sélectionnez la couche `0` (`Select a layer to modify.`)

- Cliquez sur la première touche (`1` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `FN` : `MO()` (Changer de layer momentanément, dans la
      layer de destination il faut le key code `KC_TRNS`)
    - Dans le menu qui vient de s'afficher, choisissez `Layer 1`
- Cliquez sur la deuxième touche (`2` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `LIGHTING` : `RGB_MOD`

      (passer d'un mode à l'autre : `RGB_MODE_PLAIN`, `RGB_MODE_BREATHE`, `RGB_MODE_RAINBOW`, `RGB_MODE_SWIRL`
      , `RGB_MODE_SNAKE`, `RGB_MODE_KNIGHT`, `RGB_MODE_XMAS`, `RGB_MODE_GRADIENT`)

- Cliquez sur la troisième touche (`3` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `LIGHTING` : `RGB_HUI` (augmenter la teinte de la
      couleur)

Layer 1 :
Sélectionnez la couche `1` (`Select a layer to modify.`)

- Cliquez sur la première touche (`TRNS` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `PRIMARY` : `TRNS`
- Cliquez sur la deuxième touche (`TRNS` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `FN` : `M()`
    - Dans le menu qui vient de s'afficher, choisissez la macro `0`
- Cliquez sur la troisième touche (`TRNS` par défaut)
    - Dans `Configure the selected key.` choisissez dans l'onglet `FN` : `M()`
    - Dans le menu qui vient de s'afficher, choisissez la macro `1`

#### Onglet `MACROS`

Créez les macros suivantes (utilisez la fonction record pour enregistrer les touches) :

- `0` : `Ctrl + C`
- `1` : `Ctrl + V`

#### Onglet `COMPILE`

Compilez le firmware en cliquant sur `Download .hex`

### Téléverser le firmware dans le clavier

- Utilisez votre .hex que vous venez de générer ou utilisez le fichier [TheKeyV2.hex](TheKeyV2.hex)
- Téléchargez `qmk_toolbox.exe`
  sur [GitHub - qmk/qmk_toolbox: A Toolbox companion for QMK Firmware](https://github.com/qmk/qmk_toolbox/releases/latest)
- Cliquez sur `Open`, puis sélectionnez le fichier .hex que vous voulez téléverser.
- Appuyez sur le bouton au dos du clavier pour le mettre en mode DFU (Device Firmware Update), le
  texte `Atmel DFU device connected (libusb0): Atmel Corp. ATmega32U4 (03EB:2FF4:0000)` ou similaire doit apparaître.
- Cliquez sur `Flash` et attendez que le firmware soit téléversé.
