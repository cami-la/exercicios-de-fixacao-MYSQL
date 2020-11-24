
USE longa_vida;
SELECT associado.Nome, plano.Descricao FROM associado
INNER JOIN plano
ON associado.Plano = plano.Numero
ORDER BY associado.Nome ASC;