
CREATE DATABASE exercicio_db;
USE exercicio_db;



-- Cada pedido somente pode conter um produto.

-- Tabela Clientes
CREATE TABLE Clientes(
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Idade INT,
    Email VARCHAR(200)
)engine=InnoDB;

-- Tabela Clientes
CREATE TABLE Vendedores(
    VendedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Email VARCHAR(200),
    Salario DECIMAL(10,2)
)engine=InnoDB;

-- Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT
)engine=InnoDB;

-- Tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    ProdutoID INT,
    VendedorID INT,
    Quantidade INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (VendedorID) REFERENCES Vendedores(VendedorID)
)engine=InnoDB;


-- 1 - Contar o número de produtos em cada categoria.
SELECT categoria, count(*) FROM produtos group by categoria ;

-- 2 - Encontrar o produto mais caro em cada categoria.

select categoria, max(preco) from produtos group by categoria;

-- outra forma

select f.categoria, max(f.preco),
(
    select d.nome from produtos d where d.categoria = f.categoria 
    and d.preco = max(f.preco)
) as "produto"
from produtos f group by f.categoria;

-- 3 - Calcular o preço médio dos produtos em estoque.

select categoria, avg(estoque) from produtos group by categoria ;

-- 4 - Contar o número de pedidos feitos por cada cliente.

SELECT clienteid, count(clienteid) FROM pedidos group by clienteid ;

-- 5 - Encontrar a data mais recente de compra para cada cliente.

select clienteid, max(datapedido) from pedidos group by clienteid;

-- 6 - Calcular o valor total de vendas por mês.

select sum(quantidade),month (datapedido), year(datapedido) from pedidos group by YEAR(datapedido),month(datapedido);

-- 7 - Encontrar a categoria com a maior quantidade de produtos.

select categoria, sum(estoque) from produtos group by categoria order by sum(estoque) desc limit 1;

-- limit limita quantos registro voce quer mostrar
-- desc mostra de forma descrescente

-- 8 - Calcular o preço médio dos produtos em cada categoria.

select categoria, avg(preco) from produtos group by categoria;


-- 9 - Contar quantos pedidos foram feitos em cada mês.

select  count(pedidos), month(datapedidos)  from produtos;

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


