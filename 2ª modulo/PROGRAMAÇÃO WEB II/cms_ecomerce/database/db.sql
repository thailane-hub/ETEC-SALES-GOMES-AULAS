CREATE DATABASE ecomerce;
USE ecomerce;

CREATE TABLE categoria(
    idcategoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    descricao VARCHAR(200)
)Engine=InnoDB

CREATE TABLE produto (
    idproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    preco DECIMAL(10,2)
)