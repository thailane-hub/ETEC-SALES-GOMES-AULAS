-- DDL -> Data Definition Language
-- DML -> Data Manipulation Language
-- (DQL) -> Data Query Language  (select)

DROP DATABASE mercado22;
CREATE DATABASE mercado22;
USE mercado22;
CREATE TABLE produto(
	idproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
	fabricante VARCHAR(50),
    preco DECIMAL(10,2),
    qtd INT
);

INSERT INTO produto VALUES(0, "Coca Cola", "Cola Coca", 8, 20);
INSERT INTO produto VALUES(0, "Fanta", "Cola Coca", 7, 50);
INSERT INTO produto VALUES(0, "Kuat", "Cola Coca", 6, 30);
INSERT INTO produto VALUES(0, "Tuiubaina", "Rossi", 4, 120);
INSERT INTO produto VALUES(0, "Tuiubaina Limão", "Rossi", 4, 120);
INSERT INTO produto VALUES(0, "iPhone", "Épou", 5400, 10);
INSERT INTO produto VALUES(0, "iPad", "Épou", 3000, 38);
INSERT INTO produto VALUES(0, "Macbook", "Épou", 8500, 20);
INSERT INTO produto VALUES(0, "GalaxyBook", "Samsung", 7000, 18);
INSERT INTO produto VALUES(0, "Geladeira", "Samsung", 3000, 12);
INSERT INTO produto VALUES(0, "GalaxyS24", "Samsung", 5000, 25);
INSERT INTO produto VALUES(0, "RTX 4090", "NVIDIA", 13000, 4);
INSERT INTO produto VALUES(0, "RTX 4080",  "NVIDIA", 4200, 8);


-- Funções em Consulta
-- SUM(coluna) -> Calcula a soma dos valores de uma coluna
-- AVG(coluna) -> Calcula a média dos valores de uma coluna
-- MIN(coluna) -> Retorna o menor valor de uma coluna
-- MAX(coluna) -> Retorna o maior valor de uma coluna
-- COUNT(* ou coluna) -> Retorna a quantidade de registros

-- 1 -> Mostrar a soma de qtd de todos os produtos onde nome começa com a letra C
SELECT SUM(qtd) FROM produto WHERE nome LIKE "C%";

-- 2 -> Mostrar a média de qtd de produtos onde preço < 500
SELECT AVG(qtd) FROM produto WHERE preco < 500;

-- 3 -> Mostrar o maior preço entre os produtos onde o nome termina com letra a
SELECT MAX(preco) FROM produto WHERE UPPER(nome) LIKE "%A";

-- 4 -> Mostrar o menor preço entre os produtos onde o nome termina com letra "a" e qtd < 100;
SELECT MIN(preco) FROM produto WHERE nome LIKE "%a" AND qtd < 100;

-- 5 -> Mostrar quantidade de produtos onde o nome termina com letra "a" e qtd < 100;
SELECT COUNT(idproduto), SUM(qtd), MAX(preco), MIN(preco), AVG(preco) FROM produto WHERE nome LIKE "%a" AND qtd < 100;


-- GROUP BY -> Comando utilizado para agrupar por uma ou mais colunas

-- 6 -> Mostrar o maior preço e o menor preço entre os produtos de cada fabricante
SELECT fabricante, MAX(preco), MIN(preco) FROM produto GROUP BY fabricante;

-- 7 -> Mostrar a qtd média em estoque dos produtos onde nome termina com a letra A. Agrupar por fabricante.
SELECT fabricante, AVG(qtd) FROM produto WHERE nome LIKE "%a" GROUP BY fabricante;


SELECT DATEDIFF("2017-06-25", "2017-06-15");






