
USE escola;
SELECT curso.nome as curso, DATE_FORMAT(curso.inicio, '%m/%Y') AS inicio, COUNT(matricula.curso) AS qtde_matricula FROM curso
RIGHT JOIN matricula
ON curso.codigo = matricula.curso
WHERE DATE_FORMAT(curso.inicio, '%m/%Y') = '01/2008'
GROUP BY curso.nome; 


