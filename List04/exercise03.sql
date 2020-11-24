
USE escola;
SELECT * FROM curso INNER JOIN matricula
ON curso.codigo = matricula.curso
INNER JOIN aluno
ON matricula.ra = aluno.ra;

USE escola;
SELECT curso.nome AS curso , COUNT(aluno.nome) AS qtde_alunos FROM (curso INNER JOIN matricula
ON curso.codigo = matricula.curso
INNER JOIN aluno
ON matricula.ra = aluno.ra)
GROUP BY curso.nome;