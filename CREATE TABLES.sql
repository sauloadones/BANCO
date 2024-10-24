CREATE DATABASE LojaDeRoupas;
-- Tabela Funcionario
CREATE TABLE EnderecoFunc (
    idFuncionario INT,
    rua VARCHAR(45),
    bairro VARCHAR(45),
    cidade VARCHAR(45),
    cep INT,
    numero INT,
    complemento VARCHAR(45),
    PRIMARY KEY (idFuncionario)
);
CREATE TABLE Telefone (
    idTelefone INT AUTO_INCREMENT,
    numero VARCHAR(45),
    idFuncionario INT,
    idCliente INT,
    PRIMARY KEY (idTelefone),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT,
    nome VARCHAR(45),
    sexo CHAR(1),
    email VARCHAR(45),
    dataNasc DATE,
    PRIMARY KEY (idCliente)
);
CREATE TABLE EnderecoCli (
    rua VARCHAR(45),
    bairro VARCHAR(45),
    cidade VARCHAR(45),
    cep INT,
    numero INT,
    complemento VARCHAR(45),
    idCliente INT,
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
CREATE TABLE Dependente (
    idDependente INT AUTO_INCREMENT,
    nome VARCHAR(45),
    cpf VARCHAR(45),
    parentesco VARCHAR(45),
    idFuncionario INT,
    PRIMARY KEY (idDependente),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);
CREATE TABLE Ferias (
    idFerias INT AUTO_INCREMENT,
    dataInicio DATE,
    dataFim DATE,
    situacao VARCHAR(45),
    idFuncionario INT,
    PRIMARY KEY (idFerias),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);
CREATE TABLE Funcionario (
    idFuncionario INT AUTO_INCREMENT,
    nome VARCHAR(45),
    dataNascimento DATE,
    dataAdmissao DATE,
    sexo CHAR(1),
    email VARCHAR(45),
    PRIMARY KEY (idFuncionario)
);
CREATE TABLE Cargo (
    idCargo INT AUTO_INCREMENT,
    nome VARCHAR(45),
    faixaSalarial DECIMAL(10, 2),
    idFuncionario INT,
    PRIMARY KEY (idCargo),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);
CREATE TABLE Venda (
    idVenda INT AUTO_INCREMENT,
    receita DECIMAL(10, 2),
    data DATE,
    idCliente INT,
    idFuncionario INT,
    idPromocao INT,
    PRIMARY KEY (idVenda),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
    FOREIGN KEY (idPromocao) REFERENCES Promocao(idPromocao)
);
CREATE TABLE ItensVenda (
    idItensVenda INT AUTO_INCREMENT,
    idVenda INT,
    idProduto INT,
    quantidade INT,
    valorUnitario DECIMAL(7, 2),
    PRIMARY KEY (idItensVenda),
    FOREIGN KEY (idVenda) REFERENCES Venda(idVenda),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);
CREATE TABLE Promocao (
    idPromocao INT AUTO_INCREMENT,
    dataInicio DATE,
    dataFim DATE,
    valor DECIMAL(6, 2),
    descricao VARCHAR(45),
    PRIMARY KEY (idPromocao)
);
CREATE TABLE FormaPag (
    idFormaPag INT AUTO_INCREMENT,
    descricao VARCHAR(45),
    valorPag DECIMAL(10, 2),
    data DATE,
    PRIMARY KEY (idFormaPag)
);
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT,
    nome VARCHAR(45),
    tamanho CHAR(1),
    precoVenda DECIMAL(6, 2),
    marca VARCHAR(45),
    cor VARCHAR(45),
    descricao VARCHAR(45),
    PRIMARY KEY (idProduto)
);
CREATE TABLE Categoria (
    idCategoria INT AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    idProduto INT,
    PRIMARY KEY (idCategoria),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);
CREATE TABLE Estoque (
    idEstoque INT AUTO_INCREMENT,
    qtdDisponivel INT,
    dataSaida DATE,
    dataEntrada DATE,
    estocado VARCHAR(45),
    idProduto INT,
    PRIMARY KEY (idEstoque),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT,
    nome VARCHAR(45),
    cnpj VARCHAR(20),
    email VARCHAR(45),
    idProduto INT,
    PRIMARY KEY (idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);



-- Continue criando as tabelas de acordo com o MER exibido.
