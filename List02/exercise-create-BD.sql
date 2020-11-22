
USE vendas;
CREATE TABLE duplicata(
Nome CHAR(40),
Numero INTEGER NOT NULL, 
Valor DECIMAL(10,2),
Vencimento DATE,
BANCO CHAR(10),
PRIMARY KEY(Numero)
);

ALTER TABLE duplicata
RENAME COLUMN BANCO TO Banco;

USE vendas;
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 100100, 5000.00, '2017/01/20', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livraria fernandes', 100110, 2500.00, '2017/01/22', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livraria fernandes', 100120, 1500.00, '2016/10/15', 'bradesco');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 100130, 8000.00, '2016/10/15', 'santander');

USE vendas;
ALTER TABLE duplicata MODIFY COLUMN Banco VARCHAR(40);

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 200120, 10500.00, '2018/04/26', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e cia', 200125, 2000.00, '2018/04/26', 'banco do brasil');

USE vendas;
UPDATE duplicata
SET Nome = 'livros e cia'
WHERE Numero = 200125;

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 200130, 11000.00, '2018/09/26', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 250350, 1500.00, '2018/01/26', 'bradesco');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 250360, 500.00, '2018/12/18', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 250370, 3400.00, '2018/04/26', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 250380, 3500.00, '2018/04/26', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros e cia', 453360, 1500.00, '2018/06/15', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 453365, 5400.00, '2018/06/15', 'bradesco');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 453370, 2350.00, '2017/12/27', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros e cia', 453380, 1550.00, '2017/12/27', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 980130, 4000.00, '2016/12/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papel e afins', 985502, 2500.00, '2016/03/12', 'itau');

USE vendas;
UPDATE duplicata
SET Numero = 985001
WHERE Numero = 980130;

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 888132, 2500.00, '2017/03/05', 'itau');

USE vendas;
UPDATE duplicata
SET Banco = 'santander'
WHERE Numero = 985002;

DELETE FROM duplicata
WHERE Numero = 888132;
DELETE FROM duplicata
WHERE Numero = 985001;
DELETE FROM duplicata
WHERE Numero = 985502;

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 980130, 4000.00, '2016/12/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livraria fernandes', 770710, 2500.00, '2016/11/15', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 985001, 3000.00, '2016/09/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papel e afins', 985002, 2500.00, '2016/03/12', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 888132, 2500.00, '2017/03/05', 'itau');

-- a ordem da visualização usando o SELECT * ficará na ordem da PK.
SELECT * FROM duplicata;
SELECT COUNT(*) FROM duplicata;