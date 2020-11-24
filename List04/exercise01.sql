
USE escola;

SELECT * FROM aluno 
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo;

SELECT aluno.ra, aluno.nome AS aluno, curso.nome AS curso FROM (aluno 
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo);
