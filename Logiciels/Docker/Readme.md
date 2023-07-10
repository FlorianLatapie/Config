# Docker

## commandes `docker`

### Voir les conteneurs est en cours d'exécution

```bash
docker ps
```

### Supprimer tous les conteneurs

```bash
docker rm $(docker ps -a -q)
```

### Voir les logs d'un conteneur

```bash
docker logs [OPTIONS] <container_name>
```

Options utiles :

- `-f` : suivre les logs en temps réel
- `--tail <nombre>` : afficher les `nombre` dernières lignes

### Volumes docker

#### Afficher les volumes docker

```bash
docker volume ls
```

#### Supprimer tous les volumes docker

```bash
docker volume rm $(docker volume ls -q)
```

---

## Commandes `docker-compose`

### Supprimer un stack docker-compose

In the directory where the `docker-compose.yml` file is located, run the following command:

```bash
docker-compose down
```

## Informations utiles

Source : [mongo - Official Image | Docker Hub](https://hub.docker.com/_/mongo)

Quand un conteneur est démaré pour la première fois, il exécute les fichiers avec les extensions `*.sh` et `*.js` qui sont trouvés dans `/docker-entrypoint-initdb.d/`.
