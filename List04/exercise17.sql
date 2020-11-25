
USE escola;
SELECT aluno.nome, DAYNAME(matricula.data_matricula) AS dia_matricula, CONCAT('R$ ', matricula.valor) AS valor,
CASE 
	WHEN DAYNAME(matricula.data_matricula) = 'saturday' THEN CONCAT('R$ ', FORMAT(matricula.valor * 0.5, 2))
	ELSE 'sem desconto'
    END AS desconto_matricula
FROM aluno
LEFT JOIN matricula
ON matricula.ra = aluno.ra
GROUP BY matricula.data_matricula;