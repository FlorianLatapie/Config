# LanguageTool

## A télécharger

- [Extension LanguageTool pour navigateurs basés sur Chromium](https://chromewebstore.google.com/detail/correcteur-d%E2%80%99orthographe/oldceeleldhonbafppcapldpdifcinji)
- [LanguageTool-latest-snapshot.zip](https://internal1.languagetool.org/snapshots/)
- [Java 21](https://www.oracle.com/fr/java/technologies/downloads/#jdk21-windows)

## Installation

- Installez Java 21
- Dézippez le fichier `LanguageTool-latest-snapshot.zip`
- Dans le dossier téléchargé, à coté de `languagetool-server.jar`, créez un fichier vide `server.properties` avec la commande suivante :

```cmd
type nul > server.properties
```

ou

```bash
touch server.properties
```

- Ouvrez un terminal dans le dossier de LanguageTool et lancez la commande :

```cmd
java -cp languagetool-server.jar org.languagetool.server.HTTPServer --config server.properties --port 8081
```

### Paramétrer l'extension

- Clic droit sur l'extension > `Options`
- En bas de la page cliquez sur `Paramètres avancés (uniquement pour les professionnels)`
- Dans la section `serveur de LanguageTool` cliquez sur `Serveur local (localhost)`
- Testez en cliquant sur l'extentension puis `Ouvrir l'éditeur` vous devriez pouvoir corriger les fautes et voir les logs dans le terminal

## Sources

- [LanguageTool embedded HTTP Server](https://dev.languagetool.org/http-server.html)
