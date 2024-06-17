### README pour la Formation DevOps

#### Introduction
Ce document détaille ma progression et les activités réalisées dans le cadre de ma formation en DevOps. Les principaux outils étudiés sont Terraform, Docker, et Docker Compose. Cette formation vise à me fournir les compétences nécessaires pour automatiser les infrastructures et gérer les conteneurs de manière efficace.

---

#### Objectifs de la Formation
1. **Comprendre les concepts fondamentaux de DevOps**
2. **Apprendre à utiliser Terraform pour la gestion d'infrastructure en tant que code (IaC)**
3. **Maîtriser Docker pour la création et la gestion de conteneurs**
4. **Utiliser Docker Compose pour orchestrer des applications multi-conteneurs**

---

#### Contenu de la Formation

##### 1. Dossier - Terraform

###### Introduction à Terraform
- **Présentation de Terraform** : Compréhension de l'infrastructure en tant que code (IaC)
- **Installation et configuration** : Mise en place de l'environnement Terraform

###### Concepts Clés
- **Fichiers de configuration** : Création de fichiers `.tf`
- **Providers** : Utilisation de différents fournisseurs de services cloud
- **Ressources** : Définition et gestion des ressources
- **Variables et Outputs** : Gestion des variables et extraction des résultats

###### Pratiques
- **Déploiement d'une infrastructure AWS simple** : Création de ressources AWS (EC2, S3, VPC)
- **Gestion des états** : Comprendre et utiliser le fichier `terraform.tfstate`
- **Modularité** : Création et utilisation de modules Terraform

##### 2. Dossier - Docker

###### Introduction à Docker
- **Présentation de Docker** : Conteneurisation et avantages
- **Installation et configuration** : Mise en place de Docker sur différentes plateformes

###### Concepts Clés
- **Images et conteneurs** : Création et gestion des images Docker et des conteneurs
- **Dockerfile** : Écriture de fichiers Dockerfile pour automatiser la création d'images
- **Réseaux Docker** : Configuration des réseaux entre conteneurs

###### Pratiques
- **Création d'une image personnalisée** : Développement d'une application simple en conteneur
- **Gestion des conteneurs** : Démarrage, arrêt, et gestion des conteneurs en cours d'exécution
- **Volumes Docker** : Gestion des données persistantes dans Docker

##### 3. Docker Compose

###### Introduction à Docker Compose
- **Présentation de Docker Compose** : Orchestration des conteneurs multiples
- **Installation et configuration** : Mise en place de Docker Compose

###### Concepts Clés
- **Fichiers `docker-compose.yml`** : Écriture de fichiers Docker Compose
- **Services** : Définition et gestion des services multi-conteneurs
- **Réseautage et volumes** : Configuration des réseaux et volumes dans Docker Compose

###### Pratiques
- **Déploiement d'une application multi-conteneurs** : Utilisation de Docker Compose pour déployer une stack (ex. application web avec base de données)
- **Scaling des services** : Mise à l'échelle des services avec Docker Compose

---

#### Projets Réalisés

##### Projet TP1 à 4 : Déploiement d'une Infrastructure AWS avec Terraform Basic
- **Objectif** : Déployer mes première instance aws, pour commprendre les premier consept de terraform en pratiquent 
- **Résultat** : Infrastructure déployée avec succès, gestion des états et variables effectuée

##### Projet TP5 : Déploiement d'une Infrastructure AWS avec une base SQL et un S3
- **Objectif** : 
  - Déployer deux instances EC2 de petite taille dans le même sous-réseau. 
  - Utiliser une approche dynamique pour nommer les machines en utilisant un index (par exemple, `machine1`, `machine2`). Le nom et l'index des machines doivent être générés automatiquement via une boucle, sans mentionner explicitement le numéro (1 ou 2) dans le nom.
  - Assigner des adresses IP statiques à ces machines.
  - Stocker l'état (`tfstate`) sur un bucket S3 pour assurer la gestion et la sauvegarde des états de l'infrastructure.
- **Résultat** : Infrastructure déployée avec succès, avec deux instances EC2 correctement nommées et configurées avec des IP statiques, et le fichier `tfstate` stocké en toute sécurité sur S3, garantissant une gestion efficace des états et des variables.

##### Infrastructure utiliser pour mon Apprentisage : 
![alt text](/Image/image.png)


---

#### Ressources Utilisées
- **Documentation Terraform** : https://www.terraform.io/docs
- **Documentation Docker** : https://docs.docker.com
- **Documentation Docker Compose** : https://docs.docker.com/compose
- **Formation Docker** : https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker
- **Playlist Youtube** : https://www.youtube.com/watch?v=_6AITxe5iVc&list=PLn6POgpklwWrpWnv05paAdqbFbV6gApHx

---


Cordialement,

Garçon

17/06/2024