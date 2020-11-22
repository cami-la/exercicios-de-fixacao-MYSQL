
USE vendas;
SELECT COUNT(*) AS QTD_DUPLICATAS_ITAU FROM duplicata 
WHERE Banco = 'itau';