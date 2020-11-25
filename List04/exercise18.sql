
USE escola;
SELECT aluno.nome, TIMESTAMPDIFF(YEAR, aluno.nascimento, CURRENT_DATE) as idade FROM aluno
GROUP BY aluno.nome;