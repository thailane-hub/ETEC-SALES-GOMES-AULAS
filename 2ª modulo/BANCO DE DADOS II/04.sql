-- criar base de dados

CREATE DATABASE mercado;

-- listar base de dados

-- SHOW DATABASES;

-- APAGAR base de dados

-- DROP DATABASE mercado; 

-- SELECIONAR base de dados

USE mercado;

CREATE TABLE cliente(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
email VARCHAR(200) NOT NULL UNIQUE,
datanascimento DATE NULL

);

CREATE TABLE produto(
idProduto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
preco DECIMAL(8,2),
codbarras INT (10) 
);

ALTER TABLE produto MODIFY COLUMN preco DECIMAL(10,2) NOT NULL;




