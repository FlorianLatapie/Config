# SSh

## Installer un serveur SSH sur Windows server 2019

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
  - Ouvez `Server Manager`
  - Dans le menu `Tools` sélectionnez `Windows Defender Firewall with Advanced Security`
  - Cliquez sur `Inbound Rules`
  - Dans le panneau à droite cliquez sur `New Rule...`
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
