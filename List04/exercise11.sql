
USE escola;
SELECT MONTH(nascimento) FROM aluno
WHERE nome = 'Ana';

USE escola;
SELECT nome AS aluno FROM aluno
WHERE MONTH(nascimento) = (SELECT MONTH(nascimento) FROM aluno
WHERE nome = 'Ana') AND nome <> 'Ana';
