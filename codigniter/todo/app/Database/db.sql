CREATE DATABASE todo;

USE todo;


CREATE TABLE categoria(
    idcategoria     INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (50) NOT NULL,
    descricao text
)Engine=InnoDB;

CREATE TABLE tarefa(
    idtarefa INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    data_cadastro DATETIME NOT NULL,
    data_conclusao DATETIME NOT NULL,
    status INT,
    fkcategoria INT,
    FOREIGN KEY (fkcategoria) REFERENCES categoria(idcategoria)
)Engine=InnoDB;