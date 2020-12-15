# Stack Docker complete

Stack Docker complete avec

* un serveur Traefik  
* une base de données MariaDB
* une application phphmyadmin

## Usage

Cette stack utilise `Docker` et `traefik` en que proxy pour accèder aux instances Docker. 

### Construire la stack

Lancer la commande suivante pour construire la stack:

    docker-compose build 

### Lancer l'environnement

Lancer la commande suivante pour construire la stack:

    docker-compose up -d

L'option `-d` permet de lancer les dockers en daemon ou arrière plan.

Veillez à modifier votre fichier host pour pouvoir accèder aux applications via leur host.

### Arrêter l'environnement

Lancer la commande suivante pour arrêter la stack:

    docker-compose down


## Modification des hosts

Les lignes suivantes sont à ajouter dans votre fichier `host`
Sous Windows, copier les lignes suivantes dans le fichier `C:\Windows\System32\drivers\etc\hosts`:

````
ds-mysql-dev.entreprise.local
ds-pam-dev.entreprise.local
````

Et sous Unix, copier les lignes suivantes dans le fichier `/etc/hosts`:

````
127.0.0.1  ds-mysql-dev.entreprise.local  
127.0.0.1  ds-pam-dev.entreprise.local
````

Voici les applications associées aux dns:

* mariadb : ds-mysql-dev.entreprise.local
* phpmyadmin : ds-pam-dev.entreprise.local

## Les répertoires de travail

Pour chaque application, le répertoire de travail est situé un répertoire en dessous la racine du fichier
`docker-compose.yml` accessible sous Unix et Windows avec la commande suivante :

    cd data/

