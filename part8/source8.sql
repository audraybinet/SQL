-----------PARTIE 8------------
--8.1. Afficher tous les frameworks associés à leurs langages. Si un langage n'a
--     pas de framework l'afficher aussi.
-- ici le as permet de creer un alias : language = lg.
-- fw devient frameworks
-- Dans le langage SQL il est possible d’utiliser des alias pour renommer temporairement une colonne ou une table dans une requête. Cette astuce est particulièrement utile pour faciliter la lecture des requêtes.
SELECT
  `lg`.`name` AS `Language`,
  `fw`.`name` AS `Framework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw`
  ON `lg`.`id` = `fw`.`languagesId`;

--8.2. Afficher tous les frameworks associés à leurs langages. Si un langage n'a
--     pas de framework ne pas l'afficher.
-- INNER JOIN un type de jointures très communes pour lier plusieurs tables entre-elles. Cette commande retourne les enregistrements lorsqu’il y a au moins une ligne dans chaque colonne qui correspond à la condition.
SELECT
  `lg`.`name` AS `Language`,
  `fw`.`name` AS `Framework`
FROM
  `languages` AS `lg`
  INNER JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`;

--8.3. Afficher le nombre de framework qu'a un langage.En SQL, la fonction d'agrégation COUNT() permet de compter le nombre d'enregistrement dans une table
-- En SQL, la fonction d'agrégation COUNT() permet de compter le nombre d'enregistrement dans une table
-- Dans le langage SQL, la commande LEFT JOIN (aussi appelée LEFT OUTER JOIN) est un type de jointure entre 2 tables.
--ela permet de lister tous les résultats de la table de gauche (left = gauche) même s’il n’y a pas de correspondance dans la deuxième tables.
SELECT
  `lg`.`name` AS `Language`,
  COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY
  `lg`.`name`;

--8.4. Afficher les langages ayant plus de 3 frameworks.
-- La commande GROUP BY est utilisée en SQL pour grouper plusieurs résultats et utiliser une fonction de totaux sur un groupe de résultat. Sur une table qui contient toutes les ventes d’un magasin, il est par exemple possible de liste regrouper les ventes par clients identiques et d’obtenir le coût total des achats pour chaque client.
-- La condition HAVING en SQL est presque similaire à WHERE à la seule différence que HAVING permet de filtrer en utilisant des fonctions telles que SUM(), COUNT(), AVG(), MIN() ou MAX().
SELECT
  `lg`.`name` AS `Language`,
  COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY
  `lg`.`name`
HAVING COUNT(`fw`.`languagesId`) > 3;
