
USE escola;
SELECT * FROM aluno
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo;

USE escola;
SELECT aluno.nome AS aluno, curso.nome AS curso, matricula.data_matricula AS data_matricula, curso.inicio FROM (aluno
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo)
GROUP BY aluno.nome
HAVING DATEDIFF(curso.inicio, matricula.data_matricula) > 0;

 