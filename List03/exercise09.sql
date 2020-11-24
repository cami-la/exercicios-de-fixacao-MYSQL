
USE longa_vida;
UPDATE plano
SET Valor = Valor * 1.1
WHERE Numero LIKE '%B%';

USE longa_vida;
UPDATE plano
SET Valor = Valor * 1.05
WHERE Numero LIKE '%E%';

USE longa_vida;
UPDATE plano
SET Valor = Valor * 1.03
WHERE Numero LIKE '%M%';

SELECT Valor, Numero FROM plano;