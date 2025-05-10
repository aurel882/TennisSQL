-- Insertion d'un tournoi dans la table 'tournois'
-- Cette commande ajoute un tournoi avec ses informations de base (nom, lieu, dates)
--Cette requête permet de créer un tournoi de tennis spécifique, avec toutes les informations nécessaires (nom, lieu, dates), dans la base de données.
INSERT INTO tournois (nom, lieu, date_debut, date_fin)
VALUES ('Tournoi Multichance 30-15/5 Schiltigheim 2025', 'Schiltigheim', '2025-06-01', '2025-06-07');



-- Cette requête permet de remplir la base de données avec les joueurs inscrits, en précisant leur nom et classement, et de les inscrire pour le tournoi à venir.
-- Insertion des joueurs dans la table 'joueurs'
-- Ici, nous insérons 10 joueurs avec leurs noms et classements respectifs
INSERT INTO joueurs (nom, classement)
VALUES
('Javier Devost', '30'),
('Isaac Bourdette', '30'),
('Rule Godin', '15/5'),
('Mandel Quinn', '30'),
('Charles Hervé', '15/5'),
('Sacripant Achin', '30'),
('Alexandre Despins', '30'),
('Ganelon Saurel', '15/5'),
('Pinabel Bellefeuille', '30'),
('Marc Villeneuve', '15/5');

-- Cette requête lie les joueurs aux tournois en enregistrant l'inscription de chaque joueur. Cela permet de suivre quels joueurs participent à quel tournoi.
-- Insertion des inscriptions des joueurs au tournoi 'Tournoi Multichance'
-- Enregistres les joueurs inscrits au tournoi en liant les joueurs avec le tournoi
INSERT INTO inscriptions (joueur_id, tournoi_id)
VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1);

-- Cette requête permet de récupérer une liste des joueurs inscrits, ordonnée par leur classement pour obtenir une vue d'ensemble des participants et de leur niveau.
-- Affichage de la liste des joueurs inscrits avec leurs classements
-- Cette requête permet de consulter tous les joueurs inscrits au tournoi, triés par classement
SELECT nom, classement
FROM joueurs
ORDER BY classement DESC;

-- Insertion des matchs entre les joueurs avec les résultats et scores des match
INSERT INTO matchs (tournoi_id, joueur_1_id, joueur_2_id, score_match)
VALUES
(1, 1, 2, '6-4, 4-6, 4-6'),  -- Joueur 1 vs Joueur 2
(1, 1, 3, '7-5, 6-4'),        -- Joueur 1 vs Joueur 3
(1, 1, 4, '6-3, 2-6, 6-7'),        -- Joueur 1 vs Joueur 4
(1, 1, 5, '6-4, 5-7, 6-3'),   -- Joueur 1 vs Joueur 5
(1, 1, 6, '6-2, 7-5'),        -- Joueur 1 vs Joueur 6
(1, 1, 7, '4-6, 4-6'),   -- Joueur 1 vs Joueur 7
(1, 1, 8, '6-3, 6-2'),   -- Joueur 1 vs Joueur 8
(1, 1, 9, '5-7, 6-7'),        -- Joueur 1 vs Joueur 9
(1, 1, 10, '6-4, 6-4'),       -- Joueur 1 vs Joueur 10
(1, 2, 3, '2-6, 6-0, 6-7'),        -- Joueur 2 vs Joueur 3
(1, 2, 4, '6-2, 7-5'),        -- Joueur 2 vs Joueur 4
(1, 2, 5, '3-6, 5-7'),   -- Joueur 2 vs Joueur 5
(1, 2, 6, '6-4, 6-3'),        -- Joueur 2 vs Joueur 6
(1, 2, 7, '7-5, 6-4'),        -- Joueur 2 vs Joueur 7
(1, 2, 8, '1-6, 3-6'),        -- Joueur 2 vs Joueur 8
(1, 2, 9, '6-4, 6-2'),        -- Joueur 2 vs Joueur 9
(1, 2, 10, '5-7, 5-7'),       -- Joueur 2 vs Joueur 10
(1, 3, 4, '6-4, 6-2'),        -- Joueur 3 vs Joueur 4
(1, 3, 5, '4-6, 6-1, 6-0'),        -- Joueur 3 vs Joueur 5
(1, 3, 6, '7-5, 2-6,6-1'),        -- Joueur 3 vs Joueur 6
(1, 3, 7, '6-4, 6-2'),        -- Joueur 3 vs Joueur 7
(1, 3, 8, '0-6, 0-6'),        -- Joueur 3 vs Joueur 8
(1, 3, 9, '6-3, 6-1'),        -- Joueur 3 vs Joueur 9
(1, 3, 10, '6-2, 7-5'),       -- Joueur 3 vs Joueur 10
(1, 4, 5, '4-6, 3-6'),        -- Joueur 4 vs Joueur 5
(1, 4, 6, '0-6, 0-6'),        -- Joueur 4 vs Joueur 6
(1, 4, 7, '7-6, 6-7,6-7'),        -- Joueur 4 vs Joueur 7
(1, 4, 8, '7-5, 6-3'),        -- Joueur 4 vs Joueur 8
(1, 4, 9, '3-6, 6-2,7-6'),        -- Joueur 4 vs Joueur 9
(1, 4, 10, '7-6, 6-4'),       -- Joueur 4 vs Joueur 10
(1, 5, 6, '2-6, 4-6'),        -- Joueur 5 vs Joueur 6
(1, 5, 7, '7-6, 6-7, 5-7'),        -- Joueur 5 vs Joueur 7
(1, 5, 8, '7-5, 6-4'),        -- Joueur 5 vs Joueur 8
(1, 5, 9, '6-2, 6-3'),        -- Joueur 5 vs Joueur 9
(1, 5, 10, '3-6, 1-6'),       -- Joueur 5 vs Joueur 10
(1, 6, 7, '6-7, 6-2, 7-6'),        -- Joueur 6 vs Joueur 7
(1, 6, 8, '7-5, 6-4'),        -- Joueur 6 vs Joueur 8
(1, 6, 9, '6-4, 6-3'),        -- Joueur 6 vs Joueur 9
(1, 6, 10, '5-7, 5-7'),       -- Joueur 6 vs Joueur 10
(1, 7, 8, '7-5, 6-4'),        -- Joueur 7 vs Joueur 8
(1, 7, 9, '2-6, 1-6'),        -- Joueur 7 vs Joueur 9
(1, 7, 10, '3-6, 6-4, 7-6'),       -- Joueur 7 vs Joueur 10
(1, 8, 9, '6-4, 7-5'),        -- Joueur 8 vs Joueur 9
(1, 8, 10, '6-2, 6-3'),       -- Joueur 8 vs Joueur 10
(1, 9, 10, '3-6, 3-6');       -- Joueur 9 vs Joueur 10


-- La requête permet d'associer chaque match à son gagnant pour générer des statistiques et déterminer le vainqueur du tournoi.
-- Insérer les résultats des matchs dans la table 'resultats'
-- Chaque ligne correspond à un match et indique quel joueur a gagné.
INSERT INTO resultats (match_id, gagnant_id)
VALUES
(1, 2),  -- Match 1 : Joueur 1 vs Joueur 2 (Joueur 2 gagne)
(2, 1),  -- Match 2 : Joueur 1 vs Joueur 3 (Joueur 1 gagne)
(3, 4),  -- Match 3 : Joueur 1 vs Joueur 4 (Joueur 4 gagne)
(4, 1),  -- Match 4 : Joueur 1 vs Joueur 5 (Joueur 1 gagne)
(5, 1),  -- Match 5 : Joueur 1 vs Joueur 6 (Joueur 1 gagne)
(6, 7),  -- Match 6 : Joueur 1 vs Joueur 7 (Joueur 7 gagne)
(7, 1),  -- Match 7 : Joueur 1 vs Joueur 8 (Joueur 1 gagne)
(8, 9),  -- Match 8 : Joueur 1 vs Joueur 9 (Joueur 9 gagne)
(9, 1),  -- Match 9 : Joueur 1 vs Joueur 10 (Joueur 1 gagne)
(10, 3), -- Match 10 : Joueur 2 vs Joueur 3 (Joueur 3 gagne)
(11, 2), -- Match 11 : Joueur 2 vs Joueur 4 (Joueur 2 gagne)
(12, 5), -- Match 12 : Joueur 2 vs Joueur 5 (Joueur 5 gagne)
(13, 2), -- Match 13 : Joueur 2 vs Joueur 6 (Joueur 2 gagne)
(14, 2), -- Match 14 : Joueur 2 vs Joueur 7 (Joueur 2 gagne)
(15, 8), -- Match 15 : Joueur 2 vs Joueur 8 (Joueur 8 gagne)
(16, 2), -- Match 16 : Joueur 2 vs Joueur 9 (Joueur 2 gagne)
(17, 10), -- Match 17 : Joueur 2 vs Joueur 10 (Joueur 10 gagne)
(18, 3), -- Match 18 : Joueur 3 vs Joueur 4 (Joueur 3 gagne)
(19, 3), -- Match 19 : Joueur 3 vs Joueur 5 (Joueur 3 gagne)
(20, 3), -- Match 20 : Joueur 3 vs Joueur 6 (Joueur 3 gagne)
(21, 3), -- Match 21 : Joueur 3 vs Joueur 7 (Joueur 3 gagne)
(22, 8), -- Match 22 : Joueur 3 vs Joueur 8 (Joueur 8 gagne)
(23, 3), -- Match 23 : Joueur 3 vs Joueur 9 (Joueur 3 gagne)
(24, 3), -- Match 24 : Joueur 3 vs Joueur 10 (Joueur 3 gagne)
(25, 5), -- Match 25 : Joueur 4 vs Joueur 5 (Joueur 5 gagne)
(26, 6), -- Match 26 : Joueur 4 vs Joueur 6 (Joueur 6 gagne)
(27, 7), -- Match 27 : Joueur 4 vs Joueur 7 (Joueur 7 gagne)
(28, 4), -- Match 28 : Joueur 4 vs Joueur 8 (Joueur 4 gagne)
(29, 4), -- Match 29 : Joueur 4 vs Joueur 9 (Joueur 4 gagne)
(30, 1), -- Match 30 : Joueur 4 vs Joueur 10 (Joueur 1 gagne)
(31, 6), -- Match 31 : Joueur 5 vs Joueur 6 (Joueur 6 gagne)
(32, 7), -- Match 32 : Joueur 5 vs Joueur 7 (Joueur 7 gagne)
(33, 5), -- Match 33 : Joueur 5 vs Joueur 8 (Joueur 5 gagne)
(34, 5), -- Match 34 : Joueur 5 vs Joueur 9 (Joueur 5 gagne)
(35, 10), -- Match 35 : Joueur 5 vs Joueur 10 (Joueur 10 gagne)
(36, 6), -- Match 36 : Joueur 6 vs Joueur 7 (Joueur 6 gagne)
(37, 6), -- Match 37 : Joueur 6 vs Joueur 8 (Joueur 6 gagne)
(38, 6), -- Match 38 : Joueur 6 vs Joueur 9 (Joueur 6 gagne)
(39, 10), -- Match 39 : Joueur 6 vs Joueur 10 (Joueur 10 gagne)
(40, 7), -- Match 40 : Joueur 7 vs Joueur 8 (Joueur 7 gagne)
(41, 9), -- Match 41 : Joueur 7 vs Joueur 9 (Joueur 9 gagne)
(42, 7), -- Match 42 : Joueur 7 vs Joueur 10 (Joueur 7 gagne)
(43, 8), -- Match 43 : Joueur 8 vs Joueur 9 (Joueur 8 gagne)
(44, 8), -- Match 44 : Joueur 8 vs Joueur 10 (Joueur 8 gagne)
(45, 10); -- Match 45 : Joueur 9 vs Joueur 10 (Joueur 10 gagne)


-- Cette requête permet d'afficher les informations sur les matchs, y compris les joueurs, le score et leurs classement. Elle offre une vue d'ensemble sur l'ensemble des confrontations dans le tournoi.
-- Affichage des matchs et des résultats pour chaque joueur
-- Cette requête permet de visualiser les matchs avec les joueurs et leurs scores respectifs
SELECT 
    m.match_id, 
    j1.nom AS joueur_1,
    j1.classement AS classement_joueur_1,
    j2.nom AS joueur_2,
    j2.classement AS classement_joueur_2,
    m.score_match
FROM matchs m
JOIN joueurs j1 ON m.joueur_1_id = j1.joueur_id
JOIN joueurs j2 ON m.joueur_2_id = j2.joueur_id;

-- Cette requête permet de lister les matchs d'un joueur donné, qu'il soit joueur 1 ou joueur 2, ainsi que ses scores et adversaires, ce qui est utile pour un suivi détaillé des performances d'un joueur particulier.
-- Affichage des matchs d'un joueur spécifique (par exemple, joueur avec l'ID 10)
-- Cette requête permet d'afficher tous les matchs d'un joueur donné et leurs scores
SELECT 
    j.nom AS joueur, 
    m.score_match, 
    j2.nom AS adversaire 
FROM matchs m
JOIN joueurs j ON m.joueur_1_id = j.joueur_id
JOIN joueurs j2 ON m.joueur_2_id = j2.joueur_id
WHERE j.joueur_id = 10
UNION
SELECT 
    j.nom AS joueur, 
    m.score_match, 
    j2.nom AS adversaire 
FROM matchs m
JOIN joueurs j ON m.joueur_2_id = j.joueur_id
JOIN joueurs j2 ON m.joueur_1_id = j2.joueur_id
WHERE j.joueur_id = 10;

-- Cette requête permet de calculer le nombre de victoires et de défaites pour chaque joueur, ce qui est essentiel pour le suivi des performances et le classement dans le tournoi.
-- Calcul du nombre de victoires et de défaites pour chaque joueur
-- Cette requête permet de compter les victoires et les défaites pour chaque joueur dans le tournoi
SELECT 
    j.nom AS joueur,
    COUNT(CASE WHEN m.joueur_1_id = j.joueur_id AND r.gagnant_id = m.joueur_1_id THEN 1
               WHEN m.joueur_2_id = j.joueur_id AND r.gagnant_id = m.joueur_2_id THEN 1
               ELSE NULL END) AS victoires,
    COUNT(CASE WHEN m.joueur_1_id = j.joueur_id AND r.gagnant_id != m.joueur_1_id THEN 1
               WHEN m.joueur_2_id = j.joueur_id AND r.gagnant_id != m.joueur_2_id THEN 1
               ELSE NULL END) AS defaites
FROM joueurs j
JOIN matchs m ON m.joueur_1_id = j.joueur_id OR m.joueur_2_id = j.joueur_id
JOIN resultats r ON r.match_id = m.match_id
GROUP BY j.joueur_id;

-- Cette requête permet d'obtenir le classement des joueurs en fonction du nombre de victoires, donnant ainsi le podium des meilleurs joueurs du tournoi.
-- Sélection des 3 meilleurs joueurs en fonction du nombre de victoires
-- Cette requête permet d'afficher le podium des joueurs les plus performants dans le tournoi
SELECT j.nom AS joueur, COUNT(r.gagnant_id) AS nombre_de_victoires
FROM resultats r
JOIN joueurs j ON r.gagnant_id = j.joueur_id
GROUP BY r.gagnant_id
ORDER BY nombre_de_victoires DESC
LIMIT 3;

-- Cette requête permet de désigner le gagnant du tournoi en fonction du nombre de victoires remportées tout au long du tournoi.
-- Sélection du vainqueur du tournoi
-- Cette requête permet d'afficher le joueur ayant gagné le plus grand nombre de matchs et qui devient le vainqueur du tournoi
SELECT j.nom AS joueur, COUNT(r.gagnant_id) AS nombre_de_victoires
FROM resultats r
JOIN joueurs j ON r.gagnant_id = j.joueur_id
GROUP BY r.gagnant_id
ORDER BY nombre_de_victoires DESC
LIMIT 1;


-- Vue pour afficher les matchs avec résultats et joueurs
CREATE VIEW vue_matchs_resultats AS
SELECT 
    m.match_id,
    j1.nom AS joueur_1,
    j1.classement AS classement_joueur_1,
    j2.nom AS joueur_2,
    j2.classement AS classement_joueur_2,
    m.score_match,
    j3.nom AS gagnant
FROM matchs m
JOIN joueurs j1 ON m.joueur_1_id = j1.joueur_id
JOIN joueurs j2 ON m.joueur_2_id = j2.joueur_id
JOIN resultats r ON m.match_id = r.match_id
JOIN joueurs j3 ON r.gagnant_id = j3.joueur_id;

-- Vue pour afficher les statistiques des joueurs (victoires, défaites)
CREATE VIEW vue_statistiques_joueurs AS
SELECT 
    j.nom AS joueur,
    COUNT(CASE WHEN m.joueur_1_id = j.joueur_id AND r.gagnant_id = m.joueur_1_id THEN 1
               WHEN m.joueur_2_id = j.joueur_id AND r.gagnant_id = m.joueur_2_id THEN 1
               ELSE NULL END) AS victoires,
    COUNT(CASE WHEN m.joueur_1_id = j.joueur_id AND r.gagnant_id != m.joueur_1_id THEN 1
               WHEN m.joueur_2_id = j.joueur_id AND r.gagnant_id != m.joueur_2_id THEN 1
               ELSE NULL END) AS defaites
FROM joueurs j
JOIN matchs m ON m.joueur_1_id = j.joueur_id OR m.joueur_2_id = j.joueur_id
JOIN resultats r ON r.match_id = m.match_id
GROUP BY j.joueur_id;

-- Vue pour afficher les 3 premiers joueurs du podium
CREATE VIEW vue_podium AS
SELECT 
    j.nom AS joueur,
    COUNT(r.gagnant_id) AS nombre_de_victoires
FROM resultats r
JOIN joueurs j ON r.gagnant_id = j.joueur_id
GROUP BY r.gagnant_id
ORDER BY nombre_de_victoires DESC
LIMIT 3;

-- Afficher les match avec résultats, classement et score entre les deux joueurs
SELECT * FROM vue_matchs_resultats;

-- Afficher les statistiques des joueurs

SELECT * FROM vue_statistiques_joueurs;

-- Afficher le podium des joueurs
SELECT * FROM vue_podium;
