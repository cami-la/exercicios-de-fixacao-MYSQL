
USE vendas;
SELECT Nome, CONCAT('R$ ', FORMAT(SUM(VALOR),2)) AS Valor_Vencido, DATE_FORMAT(Vencimento, '%d/%m/%Y') AS Vencimento,
DATEDIFF(CURDATE(), Vencimento) AS Qtde_Dias_Vencido, FORMAT(SUM(Valor * 1.05),2) AS Valor_Com_Multa FROM duplicata
WHERE Nome = 'ler e saber' AND MONTH(Vencimento) >= 01 AND MONTH(Vencimento) <= 05 AND YEAR(Vencimento) = 2017
GROUP BY DATE_FORMAT(Vencimento, '%d/%m/%Y');

