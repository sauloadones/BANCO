INSERT INTO Funcionario (nome, dataNascimento, dataAdmissao, sexo, email)
VALUES
('Carlos Silva', '1985-05-12', '2020-03-15', 'M', 'carlos.silva@example.com'),
('Ana Souza', '1990-11-22', '2019-08-10', 'F', 'ana.souza@example.com'),
('João Pereira', '1987-04-10', '2018-05-20', 'M', 'joao.pereira@example.com'),
('Maria Oliveira', '1995-01-02', '2021-01-15', 'F', 'maria.oliveira@example.com'),
('Pedro Costa', '1982-12-10', '2017-07-30', 'M', 'pedro.costa@example.com'),
('Beatriz Santos', '1993-09-14', '2020-02-25', 'F', 'beatriz.santos@example.com'),
('Fernando Almeida', '1988-06-18', '2019-04-12', 'M', 'fernando.almeida@example.com'),
('Juliana Souza', '1992-03-28', '2021-06-20', 'F', 'juliana.souza@example.com'),
('Rafael Lima', '1991-07-11', '2017-11-18', 'M', 'rafael.lima@example.com'),
('Camila Rocha', '1989-10-24', '2018-09-05', 'F', 'camila.rocha@example.com');

INSERT INTO Cliente (nome, sexo, email, dataNasc)
VALUES
('Lucas Fernandes', 'M', 'lucas.fernandes@example.com', '1995-08-12'),
('Paula Martins', 'F', 'paula.martins@example.com', '1990-05-18'),
('Marcos Silva', 'M', 'marcos.silva@example.com', '1987-02-10'),
('Carla Sousa', 'F', 'carla.sousa@example.com', '1992-07-22'),
('Rodrigo Costa', 'M', 'rodrigo.costa@example.com', '1985-03-15'),
('Vanessa Lima', 'F', 'vanessa.lima@example.com', '1991-09-28'),
('Bruno Oliveira', 'M', 'bruno.oliveira@example.com', '1993-04-18'),
('Larissa Dias', 'F', 'larissa.dias@example.com', '1990-12-25'),
('Felipe Almeida', 'M', 'felipe.almeida@example.com', '1988-06-10'),
('Sara Santos', 'F', 'sara.santos@example.com', '1994-11-14');

INSERT INTO EnderecoFunc (idFuncionario, rua, bairro, cidade, cep, numero, complemento)
VALUES
(1, 'Rua A', 'Bairro 1', 'Cidade X', 12345, 100, 'Apt 101'),
(2, 'Rua B', 'Bairro 2', 'Cidade Y', 54321, 200, 'Casa'),
(3, 'Rua C', 'Bairro 3', 'Cidade Z', 98765, 300, 'Bloco 2'),
(4, 'Rua D', 'Bairro 4', 'Cidade X', 67890, 400, 'Apt 202'),
(5, 'Rua E', 'Bairro 5', 'Cidade Y', 11223, 500, 'Casa 3'),
(6, 'Rua F', 'Bairro 6', 'Cidade Z', 33445, 600, 'Apt 303'),
(7, 'Rua G', 'Bairro 7', 'Cidade X', 55667, 700, 'Bloco 1'),
(8, 'Rua H', 'Bairro 8', 'Cidade Y', 77889, 800, 'Casa 2'),
(9, 'Rua I', 'Bairro 9', 'Cidade Z', 99001, 900, 'Apt 404'),
(10, 'Rua J', 'Bairro 10', 'Cidade X', 22334, 1000, 'Bloco 3');

INSERT INTO EnderecoCli (idCliente, rua, bairro, cidade, cep, numero, complemento)
VALUES
(1, 'Av. Brasil', 'Centro', 'Cidade W', 12345, 10, 'Apt 10'),
(2, 'Av. Amazonas', 'Zona Sul', 'Cidade X', 54321, 20, 'Casa'),
(3, 'Rua das Flores', 'Jardins', 'Cidade Y', 98765, 30, 'Bloco 5'),
(4, 'Rua dos Andradas', 'Bairro 1', 'Cidade Z', 67890, 40, 'Apt 202'),
(5, 'Av. Paulista', 'Bela Vista', 'Cidade W', 11223, 50, 'Casa 6'),
(6, 'Rua Bahia', 'Centro', 'Cidade X', 33445, 60, 'Apt 101'),
(7, 'Rua Sergipe', 'Centro', 'Cidade Y', 55667, 70, 'Bloco 2'),
(8, 'Rua Paraná', 'Centro', 'Cidade Z', 77889, 80, 'Casa 3'),
(9, 'Av. Copacabana', 'Bairro 5', 'Cidade W', 99001, 90, 'Apt 404'),
(10, 'Av. Ipanema', 'Bairro 10', 'Cidade X', 22334, 100, 'Bloco 4');

INSERT INTO Cargo (nome, faixaSalarial, idFuncionario)
VALUES
('Gerente', 5000.00, 1),
('Analista', 4000.00, 2),
('Supervisor', 4500.00, 3),
('Coordenador', 5500.00, 4),
('Assistente', 3500.00, 5),
('Estagiário', 1500.00, 6),
('Diretor', 8000.00, 7),
('Consultor', 6000.00, 8),
('Técnico', 3000.00, 9),
('Vendedor', 2500.00, 10);

INSERT INTO Telefone (numero, idFuncionario, idCliente)
VALUES
('99999-1111', 1, NULL),
('88888-2222', 2, NULL),
('77777-3333', 3, NULL),
('66666-4444', 4, NULL),
('55555-5555', 5, NULL),
('44444-6666', 6, NULL),
('33333-7777', 7, NULL),
('22222-8888', 8, NULL),
('11111-9999', 9, NULL),
('99999-0000', 10, NULL);

INSERT INTO Produto (nome, tamanho, precoVenda, marca, cor, descricao)
VALUES
('Camisa', 'M', 50.00, 'Marca A', 'Vermelho', 'Camisa de algodão'),
('Calça', 'G', 100.00, 'Marca B', 'Azul', 'Calça jeans'),
('Tênis', '42', 150.00, 'Marca C', 'Preto', 'Tênis esportivo'),
('Chapéu', 'U', 30.00, 'Marca D', 'Branco', 'Chapéu de palha'),
('Jaqueta', 'M', 200.00, 'Marca E', 'Preto', 'Jaqueta de couro'),
('Short', 'P', 70.00, 'Marca F', 'Verde', 'Short de praia'),
('Meia', 'U', 10.00, 'Marca G', 'Cinza', 'Meia de algodão'),
('Bolsa', 'U', 120.00, 'Marca H', 'Marrom', 'Bolsa de couro'),
('Cinto', 'U', 40.00, 'Marca I', 'Preto', 'Cinto de couro'),
('Relógio', 'U', 300.00, 'Marca J', 'Prata', 'Relógio de pulso');

INSERT INTO Estoque (qtdDisponivel, dataSaida, dataEntrada, estocado, idProduto)
VALUES
(100, '2024-01-01', '2024-01-05', 'Sim', 1),
(50, '2024-01-02', '2024-01-06', 'Sim', 2),
(150, '2024-01-03', '2024-01-07', 'Sim', 3),
(30, '2024-01-04', '2024-01-08', 'Sim', 4),
(20, '2024-01-05', '2024-01-09', 'Sim', 5),
(70, '2024-01-06', '2024-01-10', 'Sim', 6),
(10, '2024-01-07', '2024-01-11', 'Sim', 7),
(120, '2024-01-08', '2024-01-12', 'Sim', 8),
(40, '2024-01-09', '2024-01-13', 'Sim', 9),
(300, '2024-01-10', '2024-01-14', 'Sim', 10);

INSERT INTO Fornecedor (nome, cnpj, email, idProduto)
VALUES
('Fornecedor A', '00.111.222/0001-33', 'fornecedorA@example.com', 1),
('Fornecedor B', '11.222.333/0001-44', 'fornecedorB@example.com', 2),
('Fornecedor C', '22.333.444/0001-55', 'fornecedorC@example.com', 3),
('Fornecedor D', '33.444.555/0001-66', 'fornecedorD@example.com', 4),
('Fornecedor E', '44.555.666/0001-77', 'fornecedorE@example.com', 5),
('Fornecedor F', '55.666.777/0001-88', 'fornecedorF@example.com', 6),
('Fornecedor G', '66.777.888/0001-99', 'fornecedorG@example.com', 7),
('Fornecedor H', '77.888.999/0001-00', 'fornecedorH@example.com', 8),
('Fornecedor I', '88.999.000/0001-11', 'fornecedorI@example.com', 9),
('Fornecedor J', '99.000.111/0001-22', 'fornecedorJ@example.com', 10);

INSERT INTO Venda (receita, data, idCliente, idFuncionario, idPromocao)
VALUES
(500.00, '2024-01-15', 1, 1, 1),
(1000.00, '2024-01-16', 2, 2, 2),
(750.00, '2024-01-17', 3, 3, 3),
(1200.00, '2024-01-18', 4, 4, 4),
(600.00, '2024-01-19', 5, 5, 5),
(800.00, '2024-01-20', 6, 6, 6),
(950.00, '2024-01-21', 7, 7, 7),
(1100.00, '2024-01-22', 8, 8, 8),
(1300.00, '2024-01-23', 9, 9, 9),
(900.00, '2024-01-24', 10, 10, 10);

INSERT INTO ItensVenda (idVenda, idProduto, quantidade, valorUnitario)
VALUES
(1, 1, 2, 50.00),
(2, 2, 1, 100.00),
(3, 3, 1, 150.00),
(4, 4, 3, 30.00),
(5, 5, 2, 200.00),
(6, 6, 1, 70.00),
(7, 7, 5, 10.00),
(8, 8, 1, 120.00),
(9, 9, 3, 40.00),
(10, 10, 2, 300.00);

INSERT INTO Promocao (dataInicio, dataFim, valor, descricao)
VALUES
('2024-01-01', '2024-01-10', 10.00, 'Promoção de Ano Novo'),
('2024-02-01', '2024-02-10', 20.00, 'Promoção de Carnaval'),
('2024-03-01', '2024-03-10', 30.00, 'Promoção de Páscoa'),
('2024-04-01', '2024-04-10', 40.00, 'Promoção de Outono'),
('2024-05-01', '2024-05-10', 50.00, 'Promoção de Dia das Mães'),
('2024-06-01', '2024-06-10', 60.00, 'Promoção de Inverno'),
('2024-07-01', '2024-07-10', 70.00, 'Promoção de Férias'),
('2024-08-01', '2024-08-10', 80.00, 'Promoção de Dia dos Pais'),
('2024-09-01', '2024-09-10', 90.00, 'Promoção de Primavera'),
('2024-10-01', '2024-10-10', 100.00, 'Promoção de Dia das Crianças');

INSERT INTO FormaPag (descricao, valorPag, data)
VALUES
('Cartão de Crédito', 500.00, '2024-01-01'),
('Cartão de Débito', 1000.00, '2024-01-02'),
('Boleto', 750.00, '2024-01-03'),
('Transferência Bancária', 1200.00, '2024-01-04'),
('Pix', 600.00, '2024-01-05'),
('Dinheiro', 800.00, '2024-01-06'),
('Cartão de Crédito', 950.00, '2024-01-07'),
('Cartão de Débito', 1100.00, '2024-01-08'),
('Boleto', 1300.00, '2024-01-09'),
('Transferência Bancária', 900.00, '2024-01-10');

INSERT INTO Dependente (nome, cpf, parentesco, idFuncionario)
VALUES
('João Silva', '123.456.789-00', 'Filho', 1),
('Maria Souza', '987.654.321-00', 'Filha', 2),
('Carlos Pereira', '456.123.789-00', 'Filho', 3),
('Ana Oliveira', '321.654.987-00', 'Filha', 4),
('Pedro Costa', '789.456.123-00', 'Filho', 5),
('Beatriz Santos', '654.987.321-00', 'Filha', 6),
('Fernando Almeida', '789.123.456-00', 'Filho', 7),
('Juliana Souza', '987.321.654-00', 'Filha', 8),
('Rafael Lima', '123.789.456-00', 'Filho', 9),
('Camila Rocha', '456.987.123-00', 'Filha', 10);

INSERT INTO Ferias (dataInicio, dataFim, situacao, idFuncionario)
VALUES
('2024-01-15', '2024-01-30', 'Aprovada', 1),
('2024-02-10', '2024-02-25', 'Aprovada', 2),
('2024-03-05', '2024-03-20', 'Aprovada', 3),
('2024-04-01', '2024-04-15', 'Aprovada', 4),
('2024-05-12', '2024-05-27', 'Aprovada', 5),
('2024-06-07', '2024-06-22', 'Aprovada', 6),
('2024-07-01', '2024-07-16', 'Aprovada', 7),
('2024-08-03', '2024-08-18', 'Aprovada', 8),
('2024-09-10', '2024-09-25', 'Aprovada', 9),
('2024-10-05', '2024-10-20', 'Aprovada', 10);

INSERT INTO Categoria (nome, descricao, idProduto)
VALUES
('Roupas', 'Categoria de roupas variadas', 1),
('Calçados', 'Categoria de calçados esportivos', 2),
('Acessórios', 'Categoria de acessórios de moda', 3),
('Chapéus', 'Categoria de chapéus', 4),
('Jaquetas', 'Categoria de jaquetas de inverno', 5),
('Shorts', 'Categoria de shorts de verão', 6),
('Meias', 'Categoria de meias de algodão', 7),
('Bolsas', 'Categoria de bolsas de couro', 8),
('Cintos', 'Categoria de cintos de couro', 9),
('Relógios', 'Categoria de relógios de pulso', 10);

