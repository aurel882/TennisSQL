Auteur : Aurélien BRESSON

# Gestion de Tournoi de Tennis Multi-Chances

## Description
Ce projet vise à développer une **base de données** pour la gestion d'un **tournoi de tennis multi-chances**. Le système permet de gérer les joueurs, les tournois, les matchs, les résultats et de calculer le vainqueur du tournoi en fonction des victoires accumulées. Ce projet utilise **SQL** pour la gestion de la base de données et les différentes opérations sur les données.

## Fonctionnalités
- **Ajouter un tournoi** avec ses informations (nom, lieu, dates).
- **Ajouter des joueurs** avec leurs classements.
- **Créer des matchs** entre les joueurs avec des scores réalistes.
- **Enregistrer les résultats** des matchs et déterminer les gagnants.
- **Calculer le podium** et le vainqueur du tournoi en fonction des victoires.

## Technologies utilisées
- **SQLite** pour la gestion de la base de données.
- **DB Browser pour SQLite** pour la création, la gestion et l'interrogation de la base de données.
- **SQL** pour les requêtes de manipulation et d'interrogation de la base.
- **Mermaid** pour la génération de diagrammes relationnels.

## Structure de la Base de Données
Les principales **tables** de la base de données sont les suivantes :
- **joueurs** : Contient les informations des joueurs (nom, classement).
- **tournois** : Contient les informations des tournois (nom, lieu, date de début et fin).
- **matchs** : Contient les matchs joués dans le tournoi, avec les scores.
- **resultats** : Enregistre le gagnant de chaque match.
- **inscriptions** : Associe les joueurs aux tournois auxquels ils sont inscrits.

## Installation
Clonez le projet et exécutez les scripts SQL dans un environnement SQLite pour configurer la base de données et ajouter des données. Vous pouvez utiliser **DB Browser pour SQLite** pour visualiser et interagir avec la base de données.

```bash
git clone https://github.com/ton-utilisateur/tournoi-tennis.git
cd tournoi-tennis
```
## Limitations et Améliorations
### Limitation :  Ce projet gère un seul tournoi à la fois et ne prend pas en charge les abandons ou les blessures.
### Amélioration : Ajouter des statistiques avancées sur les performances des joueurs et permettre la gestion de plusieurs tournois simultanément.

## Licence
Ce projet est sous licence MIT.
