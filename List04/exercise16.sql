
USE escola;
SELECT aluno.nome AS aluno, DAYNAME(matricula.data_matricula) AS dia_matricula,
CASE
	WHEN DAYNAME(matricula.data_matricula) = 'saturday' THEN 'sim'
    ELSE 'nao'
    END AS brinde
FROM aluno INNER JOIN matricula
ON aluno.ra = matricula.ra
GROUP BY matricula.data_matricula;