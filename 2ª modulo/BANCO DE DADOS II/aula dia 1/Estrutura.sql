DROP DATABASE IF EXISTS mercado_abril;
CREATE DATABASE mercado_abril;
USE mercado_abril;
 
-- Produto e Categoria

CREATE TABLE fabricante(
	idfabricante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
)engine=InnoDB;

CREATE TABLE produto(
	idproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    qtd INT,
    idfabricante INT,
    FOREIGN KEY(idfabricante) REFERENCES fabricante(idfabricante)
)engine=InnoDB;
