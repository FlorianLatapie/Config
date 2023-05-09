# Python

## Upgrade pip

Windows

```console
python -m pip install --upgrade pip
```

Linux

```console
pip install --upgrade pip
```

## Auto générer le fichier "requirements.txt"

Source : [python - Automatically create requirements.txt - Stack Overflow](https://stackoverflow.com/a/31684470)

### Ajouter requirements.txt

```console
pip install pipreqs
```

```console
pipreqs /chemin/vers/le/projet
```

### Utiliser requirements.txt

```console
pip install -r requirements.txt
```
