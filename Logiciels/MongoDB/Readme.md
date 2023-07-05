# MongoDB

## Se connecter à MongoDB en utilisant Docker

### Depuis un terminal

```bash
 docker exec -it <container-id> mongosh --username <username> --password <password>
 ```

## Depuis Docker Desktop

- Cliquez sur l'onglet `Containers`
- Double-cliquez sur le conteneur `mongodb`
- Cliquez sur l'onglet `Terminal`
- Entrez la commande : `mongosh --username <username> --password <password>`

## MongoSh commands

**Explications** : vous avez d'abord une **_database_** (base de données) qui contient des **_collections_** (tables) et les collections contiennent des **_documents_** (lignes)

### Database

#### Afficher les databases

Affiche uniquement les bases de données qui ont au moins une collection

```bash
show dbs
```

#### Créer une database

```bash
use <database-name>
```

#### Supprimer une database

```bash
use <database-name>
db.dropDatabase()
```

### Collection

#### Créer une collection

```bash
db.createCollection("<collection-name>")
```

#### Afficher toutes les collections

```bash
show collections
```

#### Supprimer une collection

```bash
db.<collection-name>.drop()
```

### Document

Pour les opérations _C_, _U_ et _D_ du _CRUD_, il est préférable de le faire dans votre code et non dans mongoSh

#### Show all documents

```bash
db.<collection-name>.find()
```
