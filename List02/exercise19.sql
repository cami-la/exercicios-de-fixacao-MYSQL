
USE vendas;
SELECT CONCAT('R$ ', FORMAT(SUM(valor), 2)) AS Valor_Total, UCASE(Banco) AS Banco FROM duplicata
WHERE Banco = 'santander'
GROUP BY Banco;