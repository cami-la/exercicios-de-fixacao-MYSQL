
USE longa_vida;
SELECT associado.Nome, associado.Plano, CONCAT('R$ ', FORMAT(plano.Valor,2)) AS Valor FROM associado
INNER JOIN plano
ON associado.Plano = plano.Numero
WHERE (associado.Cidade = 'sao paulo' AND associado.plano = 'm2') OR (associado.Cidade = 'sao paulo' AND associado.plano = 'm3')
ORDER BY Nome;

select plano, nome from associado;

-- corrigindo o plano de MARCOS DA CUNHA
UPDATE associado
SET Plano = 'M3'
WHERE Nome = 'MARCOS DA CUNHA';