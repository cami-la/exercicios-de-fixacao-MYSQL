
USE escola;
SELECT curso.nome, curso.inicio, COUNT(matricula.curso) AS qtde_alunos FROM curso
RIGHT JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome
HAVING MONTH(curso.inicio) = 01 AND YEAR(curso.inicio) = 2008; 


