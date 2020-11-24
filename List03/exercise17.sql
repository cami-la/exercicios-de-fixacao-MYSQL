
USE longa_vida;
SELECT * FROM associado INNER JOIN plano
ON associado.Plano = plano.Numero 
ORDER BY plano.Numero;