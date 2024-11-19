
CREATE DATABASE exercicio_db;
USE exercicio_db;

-- Cada pedido somente pode conter um produto.

-- Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT
)engine=InnoDB;

-- Tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    ProdutoID INT,
    Quantidade INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
)engine=InnoDB;



-- 1 - Contar o número de produtos em cada categoria.
-- 2 - Encontrar o produto mais caro em cada categoria.
-- 3 - Calcular o preço médio dos produtos em estoque.
-- 4 - Contar o número de pedidos feitos por cada cliente.
-- 5 - Encontrar a data mais recente de compra para cada cliente.
-- 6 - Calcular o valor total de vendas por mês.
-- 7 - Encontrar a categoria com a maior quantidade de produtos.
-- 8 - Calcular o preço médio dos produtos em cada categoria.
-- 9 - Contar quantos pedidos foram feitos em cada mês.
-- 10 - Encontrar o cliente com o maior número de pedidos.
-- 11 - Calcular o total de vendas por vendedor.
-- 12 - Contar quantos produtos estão em estoque em cada categoria.
-- 13 - Encontrar a data mais antiga de compra para cada cliente.
-- 14 - Calcular a média de idade dos clientes.
-- 15 - Contar quantos produtos foram vendidos de cada tipo.
-- 16 - Encontrar o produto mais barato em estoque.
-- 17 - Calcular o lucro total por categoria de produto.
-- 18 - Contar quantos clientes fizeram compras em cada mês.
-- 19 - Encontrar o vendedor com o menor número de vendas.
-- 20 - Calcular a média de dias entre pedidos para cada cliente.