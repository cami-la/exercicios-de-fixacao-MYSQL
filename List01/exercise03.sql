
USE vendas;
CREATE TABLE Nota_Fical(
Numero_NF INTEGER,
Data_NF DATE,
Valor_NF FLOAT);

RENAME TABLE Nota_Fical to Nota_Fiscal;

ALTER TABLE Nota_Fiscal
ADD CONSTRAINT PK_Nota_Fiscal PRIMARY KEY (Numero_NF);