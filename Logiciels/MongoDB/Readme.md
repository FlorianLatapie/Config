# MongoDB

## Connect to MongoDB

Find the container ID

```bash
docker ps
```

Connect to the container  
Username and password are defined in the env/mongodb.env file

```bash
 docker exec -it <container-id> mongosh --username <username> --password <password>
 ```

Or from the docker desktop interface

- Open the `Containers` tab
- Double-click on `mongodb` container name
- Click on `Terminal` tab
- Finally type `mongosh --username <username> --password <password>`

Inside mongosh :

Show all databases

```bash
 show dbs 
```

Use a database

```bash
use <database-name>
```

Display a table

```bash
db.<table-name>.find()
```

## MongoSh commands

**Usage** : you first have a **_database_** that contains **_collections_** (tables) and the collections contain **_documents_** (rows)

### Database

#### Show all databases

Shows only the databases that have at least one collection

```bash
show dbs
```

#### Create a database

```bash
use <database-name>
```

#### Delete a database

```bash
use <database-name>
db.dropDatabase()
```

### Collection

#### Create a collection

#### Show all collections

```bash
show collections
```

```bash
db.createCollection("<collection-name>")
```

#### Delete a collection

```bash
db.<collection-name>.drop()
```

### Document

For the _C_, _U_ and _D_ of the _CRUD_ operations, it is preferable to do in your code and not in the mongo shell.

#### Show all documents

```bash
db.<collection-name>.find()
```
