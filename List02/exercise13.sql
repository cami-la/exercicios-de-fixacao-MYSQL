
USE vendas;
SELECT SUM(Valor) AS SOMA_VALORES FROM duplicata
WHERE MONTH(Vencimento) = 08 AND YEAR(Vencimento) = 2016;

-- OU

USE vendas;
SELECT SUM(valor) AS SOMA_VALORES FROM duplicata
WHERE Vencimento >= '2016/08/01' AND Vencimento <= '2016/08/30';

-- No mês 08 não tem duplicada.