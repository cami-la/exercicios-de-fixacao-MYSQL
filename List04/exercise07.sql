
USE escola;
SELECT CONCAT('R$ ', FORMAT(AVG(Valor),2)) AS media FROM matricula;