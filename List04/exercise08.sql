
USE escola;
SELECT curso.nome AS curso, CONCAT('R$ ', FORMAT(AVG(matricula.valor),2)) AS valor_medio FROM curso
INNER JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome;