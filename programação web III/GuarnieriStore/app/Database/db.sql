CREATE DATABASE guarnieristore;

USE guarnieristore;

CREATE TABLE usuario(
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(200),
    senha VARCHAR(100)
)Engine=InnoDB;