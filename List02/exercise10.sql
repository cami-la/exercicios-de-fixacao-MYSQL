
USE vendas;
UPDATE duplicata
SET Banco = 'santander' 
WHERE Banco  = 'banco do brasil';

SELECT * FROM duplicata;