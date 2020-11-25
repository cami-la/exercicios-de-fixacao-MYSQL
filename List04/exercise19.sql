
USE escola;
SELECT curso.nome, PERIOD_DIFF(DATE_FORMAT(curso.termino, '%Y%m'), DATE_FORMAT(curso.inicio, '%Y%m')) AS duracao_curso FROM curso
GROUP BY curso.nome;