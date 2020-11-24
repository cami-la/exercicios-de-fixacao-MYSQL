
CREATE SCHEMA escola;

CREATE TABLE aluno(
ra VARCHAR(6),
nome VARCHAR(10),
nascimento DATE,
PRIMARY KEY (ra));

USE escola;
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123456', 'Ana', '1972/01/10');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123457', 'Bianca', '1973/02/11');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123458', 'Carla', '1987/12/12');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123459', 'Danilo', '1990/10/02');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123460', 'Eliana', '1987/01/01');

CREATE TABLE curso(
codigo VARCHAR(1),
nome VARCHAR(10),
ch VARCHAR(3),
inicio DATE,
termino DATE,
PRIMARY KEY(codigo));

USE escola;
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('1', 'java', '360', '2007/12/01', '2008/10/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('2', 'auto cad', '60', '2008/01/10', '2008/05/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('3', 'php', '90', '2008/02/15', '2008/07/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('4', 'redes', '60', '2008/01/20', '2008/03/20');

CREATE TABLE matricula(
curso VARCHAR(1),
ra VARCHAR(6),
data_matricula DATE,
valor DECIMAL (5,2));

USE escola;
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123456', '2007/09/10', 100);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('3', '123456', '2007/10/01', 60);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123457', '2007/09/01', 100);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('2', '123458', '2008/01/11', 50);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('2', '123459', '2007/07/20', 50);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123460', '2007/08/10', 80);

SELECT * FROM matricula;