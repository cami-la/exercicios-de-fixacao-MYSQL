
USE vendas;
SELECT Nome, Banco FROM duplicata
WHERE Banco = 'itau' OR Banco = 'bradesco';