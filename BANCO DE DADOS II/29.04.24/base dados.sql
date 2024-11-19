DROP DATABASE IF EXISTS exercicio_db;
CREATE DATABASE exercicio_db;
USE exercicio_db;




CREATE TABLE Clientes(
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Idade INT,
    Email VARCHAR(200)
)engine=InnoDB;


CREATE TABLE Vendedores(
    VendedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Email VARCHAR(200),
    Salario DECIMAL(10,2)
)engine=InnoDB;


CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT
)engine=InnoDB;


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

