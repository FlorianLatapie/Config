# Python

- [Python](#python)
  - [Utiliser des fichiers Python comme packages](#utiliser-des-fichiers-python-comme-packages)
  - [Ternaires](#ternaires)
  - [Conventions de nommage](#conventions-de-nommage)
  - [Mettre à jour `pip`](#mettre-à-jour-pip)
  - [Auto générer le fichier "requirements.txt"](#auto-générer-le-fichier-requirementstxt)
    - [Ajouter requirements.txt](#ajouter-requirementstxt)
    - [Utiliser requirements.txt](#utiliser-requirementstxt)
  - [Créer un venv (Virtual Environment)](#créer-un-venv-virtual-environment)
    - [Installation](#installation)
    - [Création et utilisation du venv](#création-et-utilisation-du-venv)
  - [Installer `python2` et `pip2` (apt)](#installer-python2-et-pip2-apt)
  - [Convenions Python](#convenions-python)
    - [Ajouter auteur, license](#ajouter-auteur-license)
  - [Simple HTTP server](#simple-http-server)
  - [Ajouter les modules Python au path](#ajouter-les-modules-python-au-path)
  - [Conventions de documentation](#conventions-de-documentation)

## Utiliser des fichiers Python comme packages

```py
def main():
    print("Hello World!")

if __name__ == "__main__":
    main()
```

## Ternaires

```py
<code si vrai> if <condition> else <code si faux>
```

## Conventions de nommage

| Type     | Naming convention  |
|----------|--------------------|
| file     | `snake_case.py`    |
| class    | `PascalCase`       |
| function | `snake_case`       |
| variable | `snake_case`       |
| constant | `UPPER_SNAKE_CASE` |
| package  | `lowercase`        |
| module   | `snake_case`       |

Source : [Python PEP8 style guide Cheat Sheet by jmds - Cheatography.com](https://cheatography.com/jmds/cheat-sheets/python-pep8-style-guide/) and [PEP 8 – Style Guide for Python Code | peps.python.org](https://www.python.org/dev/peps/pep-0008/#naming-conventions)

## Mettre à jour `pip`

Windows

```cmd
python -m pip install --upgrade pip
```

Linux

```bash
pip install --upgrade pip
```

## Auto générer le fichier "requirements.txt"

Source : [python - Automatically create requirements.txt - Stack Overflow](https://stackoverflow.com/a/31684470)

### Ajouter requirements.txt

```bash
pip install pipreqs
```

```bash
pipreqs /chemin/vers/le/projet --force
```

### Utiliser requirements.txt

```bash
pip install -r requirements.txt
```

## Créer un venv (Virtual Environment)

Source : [venv — Creation of virtual environments — Python 3 documentation](https://docs.python.org/3/library/venv.html)

But : utiliser une version différente de python que celui installé sur la machine

### Installation

```bash
pip install virtualenv
```

### Création et utilisation du venv

```bash
pip install virtualenv
python3 -m virtualenv -p /usr/bin/python2.7 venv-name
source venv-name/bin/activate
```

Vous devriez voir à présent (venv-name) dans votre terminal, vous pouvez utiliser python comme d'habitude (`python monfichier.py`)

## Installer `python2` et `pip2` (apt)

```bash
apt install python2 wget 
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py 
python2 get-pip.py
```

## Convenions Python

### Ajouter auteur, license

[web.archive.org/web/20111010053227/jaynes.colorado.edu/PythonGuidelines.html#module_formatting](http://web.archive.org/web/20111010053227/http://jaynes.colorado.edu/PythonGuidelines.html#module_formatting)

## Simple HTTP server

[Documentation](https://docs.python.org/fr/3/library/http.server.html) (CLI à lire à partir de la fin de la page)

Default : lance sur localhost:8000 le dossier courant

```bash
python -m http.server
```

Options supplémentaires :

```bash
python -m http.server <port> --bind <ip addr> --directory <directory>
```

## Ajouter les modules Python au path

```cmd
pip show pip
```

voir `Location:`

Linux :

`Location: /home/myusername/.local/lib/python3.10/site-packages`  
Entrez dans le path : `/home/myusername/.local/bin`

```bash
echo 'export PATH=$PATH:/home/myusername/.local/bin' >> ~/.bashrc
source ~/.bashrc
```

Windows :

`C:\Users\myusername\AppData\Roaming\Python\Python311\site-packages`

Ajoutez la ligne suivante dans le PATH

```txt
C:\Users\myusername\AppData\Roaming\Python\Python311\Scripts
```

## Conventions de documentation

[PEP 257 – Docstring Conventions](https://peps.python.org/pep-0257/)
