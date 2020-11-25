
/* se estivessemos no ano de 2008 ou 2007 mostraria a lista de cursos.
De qualquer maneira, segue a lógica: */


USE escola;
SELECT nome AS curso, inicio AS data_inicio FROM curso
WHERE DATEDIFF(inicio, current_date()) > 0
GROUP BY curso;


