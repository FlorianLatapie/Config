# Google Chrome

[Extensions Google Chrome](./ChromeExtensions.md)

## Autre

### Ajouter une chaine de caractères à la fin d'un lien

Source : [Bookmarklet to append a string to the end of a URL par cazepeda-zz](https://gist.github.com/cazepeda-zz/3967172)

1. Créer un favori
2. Modifier la cible du favori pour qu'il pointe vers le lien :

```javascript
javascript:window.location.href=window.location.href+'CHANGEZ MOI';
```

3. Sauvegarder le favori

Cela est notamment utile pour ajouter des paramètres à un lien ou pour voir les Stargazers d'un projet sur GitHub.

```javascript	
javascript:window.location.href=window.location.href+'/stargazers';
```

Autre exemple : 
```javascript	
javascript:window.location.href=window.location.href.replace(".com/",".dev/")```
