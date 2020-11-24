
USE escola;
SELECT ch FROM curso
WHERE nome = 'auto cad';

USE escola;
SELECT nome FROM curso
WHERE ch = (SELECT ch FROM curso
WHERE nome = 'auto cad') AND nome <> 'auto cad';