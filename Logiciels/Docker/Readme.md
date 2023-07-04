# Docker

## `docker` commands

### See if any container is running

```bash
docker ps
```

### Delete all containers

```bash
docker rm $(docker ps -a -q)
```

### Docker volumes

#### Show docker volumes

```bash
docker volume ls
```

#### Delete all docker volumes

```bash
docker volume rm $(docker volume ls -q)
```

---

## `docker-compose` commands

### Delete a docker-compose stack

In the directory where the `docker-compose.yml` file is located, run the following command:

```bash
docker-compose down
```
