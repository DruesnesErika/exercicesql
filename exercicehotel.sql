-- LOT 1 Exercice 1
SELECT hot_nom, hot_ville FROM hotel;

-- LOT 1 Exercice 2
SELECT cli_nom, cli_prenom, cli_adresse, cli_ville FROM client WHERE cli_nom = 'White';

-- LOT 1 Exercice 3
SELECT sta_nom, sta-sta_altitude FROM station WHERE sta_altitude < 1000;

-- LOT 1 Exercice 4
SELECT cha_numero, cha_capacite FROM chambre WHERE cha_capacite > 1;

-- LOT 1 Exercice 5
SELECT cli_nom, cli_ville FROM client WHERE cli_ville != 'Londre';

-- LOT 1 Exercice 6 
SELECT hot_nom, hot_ville, hot_categorie FROM hotel WHERE hot_ville = 'Bretou' AND hot_categorie > 3;

-- LOT 2 Exercice 7
SELECT sta_nom, hot_nom, hot_categorie, hot_ville 
FROM station, hotel
WHERE station.sta_id = hotel.hot_sta_id;

-- LOT 2 Exercice 8
SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel, chambre
WHERE hotel.hot_id = chambre.cha_hot_id;

-- LOT 2 Exercice 9
SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel, chambre
WHERE hotel.hot_id = chambre.cha_hot_id
AND cha_capacite > 1
AND hot_ville = 'Bretou';

-- LOT 2 Exercice 10
-- SELECT cli_nom, res_date
-- FROM client, reservation

-- SELECT hot_nom
-- FROM hotel
-- WHERE cha_hot_id = hot_id
-- AND cha_id = res_cha_id;