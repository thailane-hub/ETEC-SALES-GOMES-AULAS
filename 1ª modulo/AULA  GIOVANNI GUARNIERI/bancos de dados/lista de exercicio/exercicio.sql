-- Exercicio 1
CREATE DATABASE lojagastemais;
SHOW DATABASE ;

-- exerciciop 2
USE lojagastemais ;

-- Tabela 1
CREATE TABLE PRODUTO (
idproduto int(4) primary key AUTO_INCREMENT,
nome varchar(30) not null,
descricao varchar(100),
preco decimal(10,2) not null,
)

-- Tabela 2
CREATE TABLE fornecedor (
codigodofornecedor int(4) primary key AUTO_INCREMENT,
nome varchar(30) not null,
celular int(11),
estado varchar(2) not null,
cidade varchar(20) not null,
)

-- exercicio 3

desc fornecedor;

-- exercicio 4

desc lojagastemais;

-- exercicio 5

SHOW DATABASES ;

-- EXERCICIO 6

INSERT INTO produto( idproduto, nome, descricao, preco) 
values (0,"Camisa","Polo", 20.5),
(0,"Vestido","Social", 100),
(0,"Sapato","Social", 200.00)
(0,"Bolsa", "Couro", 300.00)
(0,"Tênis","Esportivo", 250.00)
(0, "Calça", "Jeans", 400)
(0,"Saia", "Malha"), 150;



