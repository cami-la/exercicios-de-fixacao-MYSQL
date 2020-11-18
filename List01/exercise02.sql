
USE vendas;
CREATE TABLE Produto(
Codigo_Produto INTEGER, 
Descricao_Produto VARCHAR(30),
Preco_Produto FLOAT);

ALTER TABLE Produto
ADD CONSTRAINT PK_Produto PRIMARY KEY (Codigo_Produto);
