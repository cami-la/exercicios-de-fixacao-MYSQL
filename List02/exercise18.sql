
USE vendas;
SELECT Nome, Numero, CONCAT('R$ ', FORMAT(Valor, 2)) AS Valor, DATE_FORMAT(Vencimento, '%d/%m/%Y') AS Vencimento,
Banco FROM duplicata
WHERE valor > 10000;