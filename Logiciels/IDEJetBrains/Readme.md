# IDE JetBrains

## Plugins

- GitHub Copilot
- Nyan Progress Bar
- Rainbow Brackets
- Rainbow CSV
- SonarLint

## Raccourcis clavier

- Générer le diagramme UML du projet : `Ctrl + Alt + Shift + U`
  ou
  clic droit sur le dossier et choisir `Diagrams` > `Show diagram`
- Reformater le fichier courant : `Ctrl + Alt + Shift + L` (Cochez aussi la case "Optimize imports")
- Renommer une variable : `Shift + F6`
- Correction de fautes d'orthographe : `Ctrl + Alt + Shift + I` puis écrire "typo", ensuite `Entrée` deux fois.
  ou
  clic droit sur le dossier et choisir `Analyze` > `Run Inspection by Name ...` > ensuite écrire `typo`
  ou
  clic droit sur le dossier et choisir `Analyze` > `Inspect Code` > valider
  [Source](https://intellij-support.jetbrains.com/hc/en-us/community/posts/206917175-Find-all-spelling-errors)

## Réglages

### SonarLint

- Comment désactiver SonarLint au démarrage ?

Source : [How to turn off SonarLint automatic triggering on IntelliJ IDEA - Stack Overflow][désactiver SonarLint]

- Cliquer sur `File`
- Cliquer sur `Settings...`
- Cliquer sur `Tools`
- Cliquer sur `SonarLint`
- Décocher `Automatically trigger SonarLint analysis`

### Completion/Suggestion insensible à la casse

- Cliquer sur `File`
- Cliquer sur `Settings...`
- Cliquer sur `Editor`
- Cliquer sur `General`
- Cliquer sur le sous menu `Code completion`
- Décocher `Match case`

<!-- Sources -->

[désactiver SonarLint]: https://stackoverflow.com/q/39175016