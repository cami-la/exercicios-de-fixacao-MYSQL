
USE escola;
SELECT curso.nome AS curso, CONCAT('R$ ' , SUM(matricula.valor)) as Valor_total FROM curso
RIGHT JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome;