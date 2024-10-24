ALTER TABLE Funcionario
ADD COLUMN telefone VARCHAR(15);

ALTER TABLE Produto
MODIFY COLUMN precoVenda DECIMAL(10, 2);

ALTER TABLE Cargo
CHANGE faixaSalarial salario DECIMAL(10, 2);

ALTER TABLE Venda
ADD CONSTRAINT fk_formapag
FOREIGN KEY (idFormaPag) REFERENCES FormaPag(idFormaPag);

ALTER TABLE EnderecoFunc
RENAME TO Endfunc;

ALTER TABLE Venda
ADD INDEX idx_data (data);

ALTER TABLE ItensVenda
RENAME TO ItemVenda;

ALTER TABLE Cliente
MODIFY COLUMN nome VARCHAR(100);

ALTER TABLE Promocao
ADD COLUMN desconto DECIMAL(5, 2);

ALTER TABLE Fornecedor
DROP FOREIGN KEY fk_produto;

ALTER TABLE ItensVenda
ADD PRIMARY KEY (idVenda, idProduto);

ALTER TABLE Categoria
CHANGE descricao detalhes VARCHAR(255);

ALTER TABLE Estoque
ADD COLUMN dataAtualizacao DATE;

ALTER TABLE Cliente
MODIFY COLUMN email VARCHAR(45) NULL;

ALTER TABLE EnderecoFunc
DROP PRIMARY KEY;
