#* Listar todos os funcionários e seus cargos *#
SELECT f.nome, c.nome AS cargo, c.faixaSalarial
FROM Funcionario f
JOIN Cargo c ON f.idFuncionario = c.idFuncionario;

#* Total de vendas realizadas por cada funcionário *#
SELECT f.nome, COUNT(v.idVenda) AS total_vendas
FROM Funcionario f
JOIN Venda v ON f.idFuncionario = v.idFuncionario
GROUP BY f.nome;

#* Receita total gerada por cada funcionário *#
SELECT f.nome, SUM(v.receita) AS total_receita
FROM Funcionario f
JOIN Venda v ON f.idFuncionario = v.idFuncionario
GROUP BY f.nome;

#* Clientes que realizaram mais de uma compra *#
SELECT c.nome, COUNT(v.idVenda) AS total_compras
FROM Cliente c
JOIN Venda v ON c.idCliente = v.idCliente
GROUP BY c.nome
HAVING total_compras > 1;

#*  Produtos mais vendidos e a quantidade total vendida *#
SELECT p.nome, SUM(iv.quantidade) AS total_vendida
FROM Produto p
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY p.nome
ORDER BY total_vendida DESC;

#* Promocões aplicadas a vendas e os valores de desconto *#
SELECT v.idVenda, p.descricao, p.valor AS desconto
FROM Venda v
JOIN Promocao p ON v.idPromocao = p.idPromocao;

#*  Receita total gerada por cliente *#
SELECT c.nome, SUM(v.receita) AS receita_total
FROM Cliente c
JOIN Venda v ON c.idCliente = v.idCliente
GROUP BY c.nome;
 #*  Funcionários que não fizeram nenhuma venda *#
SELECT f.nome
FROM Funcionario f
WHERE NOT EXISTS (SELECT 1 FROM Venda v WHERE v.idFuncionario = f.idFuncionario);
#* Clientes que mais gastaram em compras *#
SELECT c.nome, SUM(v.receita) AS total_gasto
FROM Cliente c
JOIN Venda v ON c.idCliente = v.idCliente
GROUP BY c.nome
ORDER BY total_gasto DESC;
#* Produtos em estoque com quantidade abaixo de 50 unidades *#
SELECT p.nome, e.qtdDisponivel
FROM Produto p
JOIN Estoque e ON p.idProduto = e.idProduto
WHERE e.qtdDisponivel < 50;
#*  Fornecedores que fornecem produtos mais vendidos *#
SELECT f.nome, p.nome AS produto, SUM(iv.quantidade) AS total_vendida
FROM Fornecedor f
JOIN Produto p ON f.idProduto = p.idProduto
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY f.nome, p.nome
ORDER BY total_vendida DESC;
#* Funcionários em férias atualmente *#
SELECT f.nome, fe.dataInicio, fe.dataFim
FROM Funcionario f
JOIN Ferias fe ON f.idFuncionario = fe.idFuncionario
WHERE CURDATE() BETWEEN fe.dataInicio AND fe.dataFim;
#* Média de receita por venda para cada funcionário *#
SELECT f.nome, AVG(v.receita) AS media_receita
FROM Funcionario f
JOIN Venda v ON f.idFuncionario = v.idFuncionario
GROUP BY f.nome;
#*  Categorias de produtos mais vendidas *#
SELECT cat.nome AS categoria, SUM(iv.quantidade) AS total_vendida
FROM Categoria cat
JOIN Produto p ON cat.idCategoria = p.idProduto
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY cat.nome
ORDER BY total_vendida DESC;
#* Total de produtos vendidos por fornecedor *#
SELECT f.nome, SUM(iv.quantidade) AS total_vendida
FROM Fornecedor f
JOIN Produto p ON f.idProduto = p.idProduto
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY f.nome;
#*  Produtos em promoção e suas vendas associadas *#
SELECT p.nome AS produto, SUM(iv.quantidade) AS total_vendida
FROM Promocao promo
JOIN Venda v ON promo.idPromocao = v.idPromocao
JOIN ItensVenda iv ON v.idVenda = iv.idVenda
JOIN Produto p ON iv.idProduto = p.idProduto
GROUP BY p.nome;
#* Clientes que nunca compraram produtos em promoção *#
SELECT c.nome
FROM Cliente c
WHERE NOT EXISTS (
    SELECT 1 
    FROM Venda v
    WHERE c.idCliente = v.idCliente
    AND v.idPromocao IS NOT NULL
);
#*  Detalhes de vendas acima de um valor específico *#
SELECT v.idVenda, v.receita, f.nome AS funcionario, c.nome AS cliente
FROM Venda v
JOIN Funcionario f ON v.idFuncionario = f.idFuncionario
JOIN Cliente c ON v.idCliente = c.idCliente
WHERE v.receita > 1000;

#* Produtos com preço médio de venda por promoção *#
SELECT p.nome, AVG(p.precoVenda) AS preco_medio
FROM Produto p
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
JOIN Venda v ON iv.idVenda = v.idVenda
WHERE v.idPromocao IS NOT NULL
GROUP BY p.nome;

#* Estoque atual de produtos vendidos com maior frequência *#
SELECT p.nome, e.qtdDisponivel
FROM Produto p
JOIN Estoque e ON p.idProduto = e.idProduto
JOIN ItensVenda iv ON p.idProduto = iv.idProduto
GROUP BY p.nome, e.qtdDisponivel
ORDER BY SUM(iv.quantidade) DESC;



