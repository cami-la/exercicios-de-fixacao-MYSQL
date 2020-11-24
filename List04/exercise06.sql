
USE escola;
SELECT curso.nome AS curso, CONCAT('R$ ', SUM(matricula.valor)) AS Total FROM curso
INNER JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome;

USE escola;
SELECT CONCAT('R$ ', SUM(Valor)) AS valor_total_matriculas FROM matricula;