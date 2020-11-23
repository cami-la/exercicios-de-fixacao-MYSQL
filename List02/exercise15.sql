
USE vendas;
SELECT Nome, SUM(Valor) AS Valor_Vencido, DATEDIFF(CURDATE(), Vencimento) AS Qtde_Dias_Vencido, 
Vencimento, SUM(Valor * 1.5) AS Valor_Com_Multa FROM duplicata
WHERE YEAR(Vencimento) = 2016 AND DATEDIFF(CURDATE(), Vencimento) > 0
GROUP BY Vencimento;
