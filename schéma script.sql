
-- Création de la table 'inscriptions' : enregistre l'inscription d'un joueur à un tournoi.
-- Cette table lie un joueur à un tournoi avec une clé primaire auto-incrémentée.
-- Elle fait également référence à la table "joueurs" et "tournois" via des clés étrangères.
CREATE TABLE IF NOT EXISTS "inscriptions" (
    "inscription_id" INTEGER,  -- Identifiant unique de l'inscription, auto-incrémenté
    "joueur_id" INTEGER,  -- Identifiant du joueur inscrit (clé étrangère)
    "tournoi_id" INTEGER,  -- Identifiant du tournoi auquel le joueur est inscrit (clé étrangère)
    PRIMARY KEY("inscription_id" AUTOINCREMENT),  -- Clé primaire auto-incrémentée
    FOREIGN KEY("joueur_id") REFERENCES "joueurs"("joueur_id"),  -- Lien vers la table joueurs
    FOREIGN KEY("tournoi_id") REFERENCES "tournois"("tournoi_id")  -- Lien vers la table tournois
);

-- Création de la table 'joueurs' : enregistre les informations sur les joueurs.
-- Chaque joueur a un identifiant unique (joueur_id) et un classement.
CREATE TABLE IF NOT EXISTS "joueurs" (
    "joueur_id" INTEGER,  -- Identifiant unique du joueur, auto-incrémenté
    "nom" TEXT NOT NULL,  -- Nom du joueur
    "classement" TEXT NOT NULL,  -- Classement du joueur (par exemple, 30, 15/5, etc.)
    PRIMARY KEY("joueur_id" AUTOINCREMENT)  -- Clé primaire auto-incrémentée
);

-- Création de la table 'matchs' : enregistre les matchs joués lors d'un tournoi.
-- Chaque match associe deux joueurs à un tournoi donné, avec un score pour chaque match.
CREATE TABLE IF NOT EXISTS "matchs" (
    "match_id" INTEGER,  -- Identifiant unique du match
    "tournoi_id" INTEGER,  -- Identifiant du tournoi auquel le match appartient (clé étrangère)
    "joueur_1_id" INTEGER,  -- Identifiant du premier joueur (clé étrangère)
    "joueur_2_id" INTEGER,  -- Identifiant du deuxième joueur (clé étrangère)
    "score_match" TEXT,  -- Score du match sous forme de texte (ex. "6-4, 4-6, 6-4")
    PRIMARY KEY("match_id" AUTOINCREMENT),  -- Clé primaire auto-incrémentée
    FOREIGN KEY("joueur_1_id") REFERENCES "joueurs"("joueur_id"),  -- Lien vers le joueur 1
    FOREIGN KEY("joueur_2_id") REFERENCES "joueurs"("joueur_id"),  -- Lien vers le joueur 2
    FOREIGN KEY("tournoi_id") REFERENCES "tournois"("tournoi_id")  -- Lien vers le tournoi
);

-- Création de la table 'resultats' : enregistre le gagnant d'un match.
-- Cette table lie le résultat d'un match à un joueur gagnant, avec une clé primaire auto-incrémentée.
CREATE TABLE IF NOT EXISTS "resultats" (
    "resultats_id" INTEGER,  -- Identifiant unique du résultat
    "match_id" INTEGER,  -- Identifiant du match (clé étrangère)
    "gagnant_id" INTEGER,  -- Identifiant du joueur gagnant (clé étrangère)
    PRIMARY KEY("resultats_id" AUTOINCREMENT),  -- Clé primaire auto-incrémentée
    FOREIGN KEY("gagnant_id") REFERENCES "joueurs"("joueur_id"),  -- Lien vers le joueur gagnant
    FOREIGN KEY("match_id") REFERENCES "matchs"("match_id")  -- Lien vers le match joué
);

-- Création de la table 'tournois' : enregistre les informations sur les tournois.
-- Chaque tournoi a un identifiant unique et des informations comme le nom, le lieu, et les dates de début et de fin.
CREATE TABLE IF NOT EXISTS "tournois" (
    "tournoi_id" INTEGER,  -- Identifiant unique du tournoi
    "nom" TEXT NOT NULL,  -- Nom du tournoi
    "lieu" TEXT NOT NULL,  -- Lieu du tournoi
    "date_debut" DATE NOT NULL,  -- Date de début du tournoi
    "date_fin" DATE NOT NULL,  -- Date de fin du tournoi
    PRIMARY KEY("tournoi_id" AUTOINCREMENT)  -- Clé primaire auto-incrémentée
);

-- Valider les changements et valider la transaction
COMMIT;
