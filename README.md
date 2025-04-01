## Mini-projet de Virtualisation
##### Kevin Oulai - TP A1, le 31 mars 2025

**Arborescence :**
- /src
    - dist (*Projet angular compilé*)
- Dockerfile
- README.MD

### Utilisation :

***Importer le projet Angular***
Avant toute chose, il faut build l'application angulare avec la commande : **ng build**
Récupérer le fichier /dist et placez le dans le dossier /src
**/!\ Important :** Renommez le sous-dossier contenu dans /dist par **frontend**

***Importer le projet Laravel***
Il suffit de copier votre projet laravel dans /src.
**/!\ Important :** Renommez le dossier **backend**

***Démarrer les conteneurs pour la première fois***

Sur un bash, lancez la commande **./run-docker.sh**, cette commande créera 3 conteneurs :
- **Web** contenant le backend (*Port 8000*) et frontend (*Port 8001*) de votre application
- **BD** contenant la base de données de votre application (*Port 9906*)
- **PhpMyAdmin** contenant PhpMyAdmin, accessible sur le *port 8080*, permettant une vision sur votre base de données
