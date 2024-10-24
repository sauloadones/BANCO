UPDATE Funcionario
SET nome = 'Carlos Alberto Silva'
WHERE idFuncionario = 1;

DELETE FROM Funcionario
WHERE idFuncionario = 2;

UPDATE Cargo
SET faixaSalarial = 6000.00
WHERE idCargo = 1;

DELETE FROM Cargo
WHERE idCargo = 3;

UPDATE EnderecoFunc
SET rua = 'Rua Nova A'
WHERE idFuncionario = 1;

DELETE FROM EnderecoCli
WHERE idCliente = 2;

UPDATE Funcionario f
SET f.telefone = '99999-0000'
WHERE f.email IN (SELECT c.email FROM Cliente c);

UPDATE Cliente c
SET c.telefone = '99999-0000'
WHERE c.email IN (SELECT f.email FROM Funcionario f);

UPDATE Funcionario f
JOIN EnderecoFunc ef ON f.idFuncionario = ef.idFuncionario
SET f.telefone = '88888-0000'
WHERE ef.rua = ? AND ef.bairro = ? AND ef.cidade = ?;

UPDATE Promocao
SET valor = 15.00
WHERE idPromocao = 1;

DELETE FROM Promocao
WHERE idPromocao = 2;

UPDATE Categoria
SET descricao = 'Categoria de vestuário esportivo'
WHERE idCategoria = 1;

UPDATE Fornecedor
SET nome = 'Fornecedor XYZ'
WHERE idFornecedor = 1;

UPDATE Produto
SET nome = 'Camisa Esportiva'
WHERE idProduto = 1;

UPDATE Estoque
SET qtdDisponivel = 80
WHERE idEstoque = 1;

UPDATE ItensVenda
SET quantidade = 4
WHERE idItensVenda = 1;

UPDATE Venda
SET receita = 550.00
WHERE idVenda = 1;

DELETE FROM Venda
WHERE idVenda = 3;

DELETE FROM Cargo
WHERE idCargo = 3;

DELETE FROM Produto
WHERE idProduto = 2;

DELETE FROM Fornecedor
WHERE idFornecedor = 3;

DELETE FROM Categoria
WHERE idCategoria = 2;

DELETE FROM Promocao
WHERE idPromocao = 2;


