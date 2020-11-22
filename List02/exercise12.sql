
USE vendas;
SELECT SUM(Valor) AS SOMA_2016 FROM duplicata
WHERE Vencimento >= '2016/01/01' AND Vencimento <= '2016/12/31';

-- ou

USE Vendas;
SELECT SUM(Valor) AS SOMA_2016 FROM duplicata
WHERE YEAR(Vencimento) = 2016; 