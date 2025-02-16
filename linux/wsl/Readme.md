# WSL

## Monter automatiquement Google Drive

### Utilisation temporaire

```bash
sudo mount -t drvfs G: /mnt/g
```

### Installation permanente

- Ajoutez dans le fichier `/etc/wsl.conf`

```bash
[automount]
root = /mnt/
options = "metadata,uid=1000,gid=1000,umask=0022"
mountFsTab = true
```

- Ajoutez dans le fichier `/etc/fstab`

```bash
G: /mnt/g drvfs defaults 0 0
```

- Redémarrez WSL avec `wsl --shutdown`
- Tester : `ls /mnt/g`

<details><summary>Installation auto</summary>

```bash
#!/bin/bash

set -e

WSL_CONF="/etc/wsl.conf"
WSL_CONTENT="[automount]
root = /mnt/
options = \"metadata,uid=1000,gid=1000,umask=0022\"
mountFsTab = true"

if ! grep -qF "[automount]" "$WSL_CONF" 2>/dev/null; then
    echo "Updating $WSL_CONF..."
    echo -e "$WSL_CONTENT" | sudo tee "$WSL_CONF" > /dev/null
else
    echo "$WSL_CONF already contains automount settings."
fi

FSTAB="/etc/fstab"
FSTAB_CONTENT="G: /mnt/g drvfs defaults 0 0"

if ! grep -qF "$FSTAB_CONTENT" "$FSTAB" 2>/dev/null; then
    echo "Adding entry to $FSTAB..."
    echo "$FSTAB_CONTENT" | sudo tee -a "$FSTAB" > /dev/null
else
    echo "Mount entry already exists in $FSTAB."
fi

echo "Configuration update complete."
```
