# Docker

## Informations utiles

Source : [mongo - Official Image | Docker Hub](https://hub.docker.com/_/mongo)

Quand un conteneur est démarré pour la première fois, il exécute les fichiers avec les extensions `*.sh` et `*.js` qui sont trouvés dans `/docker-entrypoint-initdb.d/`.

## Installer docker sur linux

```bash
curl -fsSL https://get.docker.com | sh
```

N'oubliez pas de démarrer le service docker

```bash
systemctl start docker
```

Pour tester si tout fonctionne lancez la commande suivante :

```bash
docker run hello-world
```

## commandes `docker`

### Voir les conteneurs est en cours d'exécution

```bash
docker ps
```

### Supprimer tous les conteneurs

```bash
docker rm $(docker ps -a -q)
```

### Accéder au shell d'un conteneur

```bash
docker exec -it <container_name> bash
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

## Commandes `docker compose`

> **Warning**
> `docker-compose` et `docker compose` sont deux commandes différentes et peuvent donc avoir des comportements différents.

En effet, `docker compose` est la version la plus récente de `docker-compose` et est donc à privilégier.

### Supprimer un stack docker compose

Dans le dossier où se trouve le fichier `docker-compose.yml`, exécutez la commande suivante :

```bash
docker compose down
```

### Stopper et relancer un seul conteneur d'un stack docker compose

#### Relancer le conteneur

```bash
docker compose restart <container_name>
```

#### Stopper le conteneur

```bash
docker compose stop <container_name>
```

#### Lancer le conteneur

```bash
docker compose up -d <container_name>
```

### Config `docker-compose` communes

#### [LAMP pour développement local](./ComposeExamples/LAMP/Readme.md)