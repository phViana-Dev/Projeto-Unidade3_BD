-- Views 

-- Vendas por funcionário 

CREATE VIEW VendasPorFuncionario AS
SELECT 
    f.idFuncionario,
    p.nomePessoa AS nomeFuncionario,
    SUM(v.total) AS totalVendas
FROM 
    Venda v
JOIN 
    Funcionario f ON v.idFuncionario = f.idFuncionario
JOIN 
    Pessoa p ON f.idPessoa = p.idPessoa
GROUP BY 
    f.idFuncionario, p.nomePessoa;


-- Produtos em estoque

CREATE VIEW ProdutosEmEstoque AS
SELECT 
    p.idProduto,
    p.nomeProduto,
    p.descricao,
    p.quantidadeEstoque
FROM 
    Produto p;
	

-- Entregas realizadas

CREATE VIEW EntregasRealizadas AS
SELECT 
    e.idEntrega,
    v.idVenda,
    p1.nomePessoa AS nomeFuncionario,
    CONCAT(en.logradouro, ', ', en.numeroEndereco, ', ', en.bairro, ', ', en.cidade, ', ', en.estado) AS enderecoEntrega,
    e.dataEntrega,
    e.statusEntrega
FROM 
    Entrega e
JOIN 
    Venda v ON e.idVenda = v.idVenda
JOIN 
    Funcionario f ON e.idFuncionario = f.idFuncionario
JOIN 
    Pessoa p1 ON f.idPessoa = p1.idPessoa
JOIN 
    Endereco en ON e.idEndereco = en.idEndereco
WHERE 
    e.statusEntrega = 'entregue';

	
-- Produtos mais vendidos

CREATE VIEW ProdutosMaisVendidos AS
SELECT 
    pr.idProduto,
    pr.nomeProduto,
    SUM(pp.quantidade) AS quantidadeVendida,
    SUM(pp.quantidade * pp.precoUnitario) AS totalArrecadado
FROM 
    Pedido_Produto pp
JOIN 
    Produto pr ON pp.idProduto = pr.idProduto
GROUP BY 
    pr.idProduto, pr.nomeProduto
ORDER BY 
    quantidadeVendida DESC;

