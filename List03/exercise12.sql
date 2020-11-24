
USE longa_vida;
SELECT associado.Nome, plano.Valor FROM associado
INNER JOIN plano 
ON associado.Plano = plano.Numero
WHERE (associado.Plano = 'B1' OR associado.Plano = 'E1' OR associado.Plano = 'M1')
GROUP BY associado.Nome;