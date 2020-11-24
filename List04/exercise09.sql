
USE escola;
SELECT curso.nome AS curso, COUNT(matricula.curso) AS qtde_alunos FROM curso
INNER JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome
HAVING COUNT(matricula.curso) >=2; 