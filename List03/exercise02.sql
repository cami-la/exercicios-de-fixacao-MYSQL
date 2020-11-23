
USE longa_vida;
SELECT * FROM plano INNER JOIN associado
ON associado.Plano = plano.Numero;