
USE vendas;
SELECT CONCAT('R$ ', FORMAT(AVG(Valor), 2)) AS Média_Valores_2016 FROM duplicata
WHERE YEAR(Vencimento) = 2016;


