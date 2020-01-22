-- exo1 partie7
-- La commande DELETE en SQL permet de supprimer des lignes dans une table. En utilisant cette commande associé à WHERE il est possible de sélectionner les lignes concernées qui seront supprimées.
DELETE FROM `languages`
WHERE `language` = 'HTML';

/* exo2 partie7 */
-- La commande UPDATE permet d’effectuer des modifications sur des lignes existantes. Très souvent cette commande est utilisée avec WHERE pour spécifier sur quelles lignes doivent porter la ou les modifications.

UPDATE `frameworks`
SET `version` ='Symfony2'
WHERE `version` = 'Symfony';

/* exo3 partie7 */

UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `language` = 'JavaScript' AND `version`= 'version 5';
