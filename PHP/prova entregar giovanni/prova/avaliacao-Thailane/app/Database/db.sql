CREATE DATABASE escola;
USE escola;
CREATE TABLE duvida(
idduvida INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(250),
titulo VARCHAR(50),
descricao VARCHAR(200)
)Engine=InnoDB;