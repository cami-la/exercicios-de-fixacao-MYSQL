
USE vendas;
SELECT Numero, Vencimento, Valor, Nome FROM duplicata
WHERE Banco <> 'itau' AND Banco <> 'santander';