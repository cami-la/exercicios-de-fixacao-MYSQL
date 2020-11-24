
USE longa_vida;

UPDATE associado
SET plano = 'E3'
WHERE Nome = 'PEDRO JOSE DE OLIVEIRA';

SELECT * FROM associado INNER JOIN plano 
ON associado.Plano = plano.Numero;