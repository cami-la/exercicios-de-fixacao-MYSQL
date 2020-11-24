
USE escola;
SELECT * FROM aluno INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON curso.codigo = matricula.curso;

USE escola;
SELECT aluno.ra, aluno.nome AS aluno, curso.nome AS curso FROM ( aluno INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON curso.codigo = matricula.curso)
ORDER BY curso.nome ASC;