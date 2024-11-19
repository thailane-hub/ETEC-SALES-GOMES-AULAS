CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE categoria(
    idcategoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    descricao VARCHAR(200)
)Engine=InnoDB;

CREATE TABLE marca(
    idmarca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    logo VARCHAR(200)
)Engine=InnoDB;

CREATE TABLE produto(
    idproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    preco DECIMAL(10,2),
    fkcategoria INT,
    FOREIGN KEY(fkcategoria) REFERENCES categoria(idcategoria),
    fkmarca INT,
    FOREIGN KEY(fkmarca) REFERENCES marca(idmarca),
    imagem VARCHAR(200),
    
)Engine=InnoDB;