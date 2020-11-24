
USE escola;
SELECT curso.nome, COUNT(matricula.curso) AS qtde_aluno FROM curso
LEFT JOIN matricula
ON curso.codigo = matricula.curso
GROUP BY curso.nome;