
USE escola;
SELECT * FROM aluno
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo;

USE escola;
SELECT aluno.nome AS aluno, curso.nome AS curso, matricula.data_matricula AS data_matricula, curso.inicio,
CASE 
	WHEN DATEDIFF(curso.inicio, matricula.data_matricula) > 0 THEN 'sim'
    ELSE 'nao'
    END AS brinde
FROM (aluno
INNER JOIN matricula
ON aluno.ra = matricula.ra
INNER JOIN curso
ON matricula.curso = curso.codigo)
GROUP BY matricula.data_matricula
HAVING DATEDIFF(curso.inicio, matricula.data_matricula) > 0;

 