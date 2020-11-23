
USE longa_vida;
SELECT associado.Nome, associado.Plano, CONCAT('R$ ', FORMAT(plano.Valor,2)) AS Valor FROM associado
LEFT JOIN plano
ON associado.Plano = plano.Numero
WHERE associado.Cidade = 'barueri' AND associado.plano = 'M1';