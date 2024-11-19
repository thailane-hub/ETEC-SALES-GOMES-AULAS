CREATE DATABASE locadora;
USE locadora;

CREATE TABLE filme(
    idfilme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    diretor VARCHAR(50),
    duracao INT
)Engine=InnoDB;