-- 1. View para listar todos os funcionários e seus cargos
CREATE VIEW vw_funcionarios_cargos AS
SELECT f.nome, c.nome AS cargo, c.faixaSalarial
FROM Funcionario f
JOIN Cargo c ON f.idFuncionario = c.idFuncionario;

-- 2. View para total de vendas realizadas por cada funcionário
CREATE VIEW vw_vendas_por_funcionario AS
SELECT f.nome, COUNT(v.idVenda) AS total_vendas
FROM Funcionario f
JOIN Venda v ON f.idFuncionario = v.idFuncionario
GROUP BY f.nome;

-- 3. View para receita total gerada por cada funcionário
CREATE VIEW vw_receita_por_funcionario AS
SELECT f.nome, SUM(v.receita) AS total_receita
FROM Funcionario f
JOIN Venda v ON f.idFuncionario = v.idFuncionario
GROUP BY f.nome;

-- 4. View para listar os clientes que realizaram mais de uma compra
CREATE VIEW vw_clientes_mais_de_uma_compra AS
SELECT c.nome, COUNT(v.idVenda) AS total_compras
FROM Cliente c
JOIN Venda v ON c.idCliente = v.idCliente
GROUP BY c.nome
HAVING total_compras > 1;

-- 5. View para listar os produtos mais vendidos e a quantidade total vendida
CREATE VIEW vw_produtos_mais_vendidos AS
SELECT p.nome, SUM(iv.quantidade) AS total_vendida
FROM Produto p
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY p.nome
ORDER BY total_vendida DESC;

-- 6. View para listar as promoções aplicadas às vendas e seus valores de desconto
CREATE VIEW vw_vendas_com_promocao AS
SELECT v.idVenda, p.descricao, p.valor AS desconto
FROM Venda v
JOIN Promocao p ON v.idPromocao = p.idPromocao;

-- 7. View para listar a receita total gerada por cliente
CREATE VIEW vw_receita_por_cliente AS
SELECT c.nome, SUM(v.receita) AS receita_total
FROM Cliente c
JOIN Venda v ON c.idCliente = v.idCliente
GROUP BY c.nome;

-- 8. View para listar funcionários que não fizeram nenhuma venda
CREATE VIEW vw_funcionarios_sem_venda AS
SELECT f.nome
FROM Funcionario f
WHERE NOT EXISTS (SELECT 1 FROM Venda v WHERE v.idFuncionario = f.idFuncionario);

-- 9. View para listar os produtos em estoque com quantidade abaixo de 50 unidades
CREATE VIEW vw_estoque_baixo AS
SELECT p.nome, e.qtdDisponivel
FROM Produto p
JOIN Estoque e ON p.idProduto = e.idProduto
WHERE e.qtdDisponivel < 50;

-- 10. View para listar detalhes de vendas acima de um valor específico (e.g., 1000)
CREATE VIEW vw_vendas_acima_de_valor AS
SELECT v.idVenda, v.receita, f.nome AS funcionario, c.nome AS cliente
FROM Venda v
JOIN Funcionario f ON v.idFuncionario = f.idFuncionario
JOIN Cliente c ON v.idCliente = c.idCliente
WHERE v.receita > 1000;
