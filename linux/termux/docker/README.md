# Docker sur Termux [dans une VM]

- [Docker sur Termux \[dans une VM\]](#docker-sur-termux-dans-une-vm)
  - [Préparation](#préparation)
  - [Tuto](#tuto)
    - [Installation de QEMU](#installation-de-qemu)
    - [Téléchargement d'Alpine Linux](#téléchargement-dalpine-linux)
    - [Create disk (note it won't actually take 4GB of space, more like 500MB)](#create-disk-note-it-wont-actually-take-4gb-of-space-more-like-500mb)
    - [Création du disque](#création-du-disque)
    - [Lancement de la VM](#lancement-de-la-vm)
    - [Depuis la VM](#depuis-la-vm)
      - [Login](#login)
    - [Setup réseau](#setup-réseau)
      - [Suite de l'installation](#suite-de-linstallation)
      - [Correction de `setup-disk`](#correction-de-setup-disk)
      - [Finalisation setup alpine](#finalisation-setup-alpine)
    - [Redémarrage sans le CD d'installation](#redémarrage-sans-le-cd-dinstallation)
      - [Depuis la VM (2)](#depuis-la-vm-2)
      - [installation de docker (enfin !)](#installation-de-docker-enfin-)
  - [Utilisation](#utilisation)


[Source](https://gist.github.com/oofnikj/e79aef095cd08756f7f26ed244355d62)

## Préparation

```bash
apt update
apt upgrade -y 
apt install wget
```

## Tuto

### Installation de QEMU

```bash
pkg install qemu-utils qemu-common qemu-system-x86_64-headless
```

### Téléchargement d'Alpine Linux

**Version** 3.12 x86_64 virtual : 39 Mo

```bash
mkdir alpine && cd $_
wget http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/x86_64/alpine-virt-3.12.3-x86_64.iso
```

check sha256sum

```bash
wget http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/x86_64/alpine-virt-3.12.3-x86_64.iso.sha256
sha256sum -c alpine-virt-3.12.3-x86_64.iso.sha256 
```

### Create disk (note it won't actually take 4GB of space, more like 500MB)

### Création du disque

> **Note**
> Cela ne va pas prendre 4 Go d'espace, mais plutôt 500 Mo

```bash
 qemu-img create -f qcow2 alpine.img 4G
```

### Lancement de la VM

```bash
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
  -cdrom alpine-virt-3.12.3-x86_64.iso \
  -nographic alpine.img
```

### Depuis la VM

#### Login

Login avec l'utilisateur `root`, aucun mot de passe

### Setup réseau

```bash
setup-interfaces
```

Puis appuyer sur `entrée` pour chaque question pour utiliser les valeurs par défaut

```bash
ifup eth0
```

```bash
echo "nameserver 192.168.1.1 nameserver 1.1.1.1" > /etc/resolv.conf
```

#### Suite de l'installation

Créez un fichier `answerfile` avec le contenu suivant :  
(`cat > answerfile`) ou avec la commande suivante :

```bash
wget https://gist.githubusercontent.com/oofnikj/e79aef095cd08756f7f26ed244355d62/raw/answerfile
```

```bash
KEYMAPOPTS="us us"
HOSTNAMEOPTS="-n alpine"
INTERFACESOPTS="auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
    hostname alpine
"
TIMEZONEOPTS="-z UTC"
PROXYOPTS="none"
APKREPOSOPTS="http://dl-cdn.alpinelinux.org/alpine/v3.18/main http://dl-cdn.alpinelinux.org/alpine/v3.18/community"
SSHDOPTS="-c openssh"
NTPOPTS="-c busybox"
DISKOPTS="-v -m sys -s 0 /dev/sda"
```

#### Correction de `setup-disk`

Pour activer la sortie de la console série au démarrage

```bash
sed -i -E 's/(local kernel_opts)=.*/\1="console=ttyS0"/' /sbin/setup-disk
```

#### Finalisation setup alpine

```bash
setup-alpine -f answerfile
```

```bash
poweroff
```

### Redémarrage sans le CD d'installation

```bash
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
  -nographic alpine.img
```

Test

```
qemu-system-x86_64 -machine q35 -m 6144 -smp cpus=6 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22,hostfwd=tcp::8000-:8000 -device virtio-net,netdev=n1 \
  -nographic alpine.img

```

#### Depuis la VM (2)

Une fois connecté en tant que `root` avec le mot de passe défini lors de l'installation

(Je ne sais pas pourquoi, mais il faut le faire à chaque fois)

```bash
echo "nameserver 192.168.1.1 nameserver 1.1.1.1" > /etc/resolv.conf
```

#### installation de docker (enfin !)

```bash
apk update && apk add docker
service docker start
rc-update add docker
```

## Utilisation

- Lancer la VM (depuis le dossier Alpine)

```bash
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
  -nographic alpine.img
```

- Quitter la VM

`poweroff` ou `Ctrl + a` puis `x`

- Autre

`Ctrl + a` puis `c` pour accéder à la console de QEMU
