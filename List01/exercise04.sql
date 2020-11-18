
USE vendas;
CREATE TABLE Itens(
Produto_Codigo_Produto INTEGER,
Nota_Fiscal_Numero_NF INTEGER,
Num_Item INTEGER,
Qtde_Item INTEGER);

ALTER TABLE Itens
ADD CONSTRAINT PK_Itens PRIMARY KEY(Produto_Codigo_Produto, Nota_Fiscal_Numero_NF);