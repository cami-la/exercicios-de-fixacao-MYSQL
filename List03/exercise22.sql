
USE longa_vida;
SELECT associado.Nome, associado.Plano, plano.Descricao, CONCAT('R$ ', FORMAT(plano.Valor,2)) AS Valor FROM associado
INNER JOIN plano
ON associado.Plano = plano.Numero
WHERE NOME LIKE '%amaral%';

