
USE longa_vida;
UPDATE plano
SET Valor = Valor * 1.06
WHERE Numero LIKE 'M%';

