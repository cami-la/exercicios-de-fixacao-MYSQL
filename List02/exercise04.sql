
USE vendas;
SELECT Numero, Vencimento, Valor, Nome FROM duplicata
WHERE YEAR(Vencimento) = 2017;