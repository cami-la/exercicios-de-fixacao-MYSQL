
USE escola;
SELECT curso.nome AS curso, YEAR(curso.inicio) AS ano_curso FROM curso
RIGHT JOIN matricula
ON curso.codigo = matricula.curso
WHERE YEAR(curso.inicio) = 2008;

