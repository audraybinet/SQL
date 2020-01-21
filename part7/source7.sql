-- exo1 partie7
DELETE FROM `languages`
WHERE `language` = 'HTML';

/* exo2 partie7 */

UPDATE `frameworks`
SET `version` ='Symfony2'
WHERE `version` = 'Symfony';

/* exo3 partie7 */

UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `language` = 'JavaScript' AND `version`= 'version 5';
