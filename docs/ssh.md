%title: Introduction au SSH
%author: theo
%date: 2020-08-18

-> # Sommaire : <-

^
* 1: Sommaire
^
* 2: Paquets
^
* 3: Lancer le service au démarrage
^
* 4: Désactiver les connections root
^
* 5: Changer le port
^
* 6: Autoriser le SSHFS
^
* 7: Autoriser/Interdire des utilisateurs
^
* 8: Afficher une bannière
^
* 9: Se connecter en SSH
^
* 10: Générer une paire de clés (côté client)
^
* 11: Configurer les clés (côté serveur)
^
* 12: Les alias ssh (1)
^
* 13: Les alias ssh (2)

---

-> # Paquets : <-

`ssh`
`openssh-server`

---

-> # Lancer le service au démarrage : <-

`systemctl enable --now ssh.service`

---

-> # Désactiver les connections root : <-

*Recommandé de ne pas mettre la connexion en root*

Dans _/etc/ssh/sshd\_config_ :

`PermitRootLogin no`

Autorisation de la connexion avec clé :

`PermitRootLogin prohibit-password`

Pour valider ne pas oublier de redémarrer le service

---

-> # Changer le port : <-

Dans _/etc/ssh/sshd\_config_ :

`Port 2222`

Pour valider ne pas oublier de redémarrer le service

*Ne pas oublier de mettre une exception dans le firewall*
Exemple avec _firewalld_:

`firewall-cmd --add-port=2222/tcp --permanent`
`firewall-cmd --reload`

---

-> # Autoriser le SSHFS : <-

Si une erreur indique *Connexion reset by peer*

Dans _/etc/ssh/sshd\_config_ :

`Subsystem	sftp	/usr/lib/openssh/sftp-server`

Pour valider ne pas oublier de redémarrer le service/usr/lib/openssh

---

-> # Autoriser/Interdire des utilisateurs : <-

Dans _/etc/ssh/sshd\_config_ :

`AllowUsers user1 user2 user3`
`DenyUsers user1 user2 user3`

---

-> # Afficher une bannière : <-

Dans _/etc/ssh/sshd\_config_ :

`Banner \{fichier de la banière\}`

---

-> # Se connecter en ssh : <-

`ssh user@ip -pport`

---

-> # Générer une paire de clés (côté client) : <-

`ssh-keygen -t rsa -b 4096`

Pour plus de sécurité on peut utiliser *ECDSA* avec une taille de 384 bits :

`ssh-keygen -t ecdsa -b 384`

Les clés seront générés dans _~/.ssh/_

---

-> # Configurer les clés (côté serveur) : <-

Copier la clé publique précédement générer (côté client) dans _~/.ssh/autorized\_keys_

Possible d'effectuer une commande de linux à linux (depuis le client) :

`ssh-copy-id user@serveur`

---

-> # Les alias ssh (1) : <-

#Alias simple

Depuis le client modifier _~/.ssh/config_ et y ajouter :

```
Host name
   Hostname ip
   Port port
   User user
```

---

-> # Les alias ssh (2) : <-

#Alias de tunnel

Depuis le client modifier _~/.ssh/config_ et y ajouter :

```
Host name
   Hostname ip
   Port port
   User user
   LocalForward portmachine ipserveur:portserveur
```

Le portmachine sera relié au portserveur, donc si le serveur n'a que le port ssh d'ouvert je peux accéder aux ressources qui écoutent sur le portserveur depuis mon portmachine en localhost
