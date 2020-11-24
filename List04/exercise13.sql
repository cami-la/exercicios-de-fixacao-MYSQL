
USE escola;
SELECT curso.nome as curso, curso.inicio, COUNT(matricula.curso) AS qtde_alunos FROM curso
LEFT JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.inicio
HAVING MONTH(curso.inicio) = 01 AND YEAR(curso.inicio) = 2008;
