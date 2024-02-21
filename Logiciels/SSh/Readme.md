# SSh

## Envoyer sa paire de clés SSH sur un serveur

Utilisez ce [script](./send-ssh-key.sh) pour envoyer votre clé publique sur un serveur ou alors suivez les instructions ci-dessous. (Sur Windows, utilisez Git Bash)

### Générer une paire de clés SSH

```bash
ssh-keygen -b 4096
```

### Envoyer la clé publique sur le serveur

```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub user@host
```

## Installer un serveur SSH sur Windows server 2019

<details><summary>Instructions</summary>

[Source](https://www.vultr.com/docs/how-to-install-openssh-on-windows-server-2019-or-2022/)

- Ouvrez PowerShell en tant qu'administrateur et collez la commande suivante :

    ```powershell
    Add-WindowsCapability -Online -Name OpenSSH.Server
    ```

    vous devriez voir la sortie suivante :

    ```powershell
    Path          :
    Online        : True
    RestartNeeded : False
    ```

- Autorisez les connexions entrantes sur le port 22 dans le pare-feu
  - Ouvrez `Server Manager`
  - Dans le menu `Tools` sélectionnez `Windows Defender Firewall with Advanced Security`
  - Cliquez sur `Inbound Rules`
  - Dans le panneau à droite, cliquez sur `New Rule...`
    - Rule Type: `Port`
    - Port and Protocols:
      - Does this rule apply to TCP or UDP? `TCP`
      - Does this rule apply to all local ports or specific local ports? `Specific local ports` et entrez `22`
    - Action: `Allow the connection`
    - Profile: `Domain`, `Private` et `Public`
    - Name: `Allow SSh`
    - Cliquez sur `Finish`
- Démarrez le service SSh
  - Ouvrez PowerShell en tant qu'administrateur et collez la commande suivante :
  
    ```powershell
    Start-Service sshd
    ```

</details>