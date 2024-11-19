USE mercado_abril;

-- Operadores lógicos do SQL (AND e OR)

-- Utilizamos o like para busca aproximada
-- % para completar com o restante da informação

-- Deletar produtos onde quantidade = 0
DELETE FROM produto WHERE qtd < 100;

-- Deletar produtos onde quantidade está entre 200 e 300
DELETE FROM produto WHERE qtd >=200 AND qtd<=300;
DELETE FROM produto WHERE qtd BETWEEN 200 AND 300;

DELETE FROM produto WHERE validade BETWEEN '2020-03-01 08:00:20' AND '2020-03-05 08:00:20' 
;

-- Deletar produtos onde o nome é igual a Aibox
DELETE FROM produto WHERE nome = 'Aibox' ;

-- Deletar produtos onde o nome comece com a letra 'a'
DELETE FROM produto WHERE nome LIKE 'a%' ;

-- Deletar produtos onde o nome termine com a letra 'a'
DELETE FROM produto WHERE nome LIKE '%a' ;

-- Deletar produtos onde a quantidade > 500 ou o nome termine es
DELETE FROM produto WHERE qtd>500 OR nome LIKE '%es';



-- Exemplos de update

-- UPDATE <table> SET <campo1>=<valor>, <campo2>=<valor> WHERE <condicoes>

-- Para o produto com id = 3, alterar o nome para Bytebox e a quantidade para 500.
UPDATE produto SET nome="Bytebox", qtd = 500 WHERE idproduto = 3;

-- Para os produtos do fabricante 616 aplicar desconto de 10% em todos os produtos.
UPDATE produto SET preco = preco * 0.9 WHERE idfabricante = 616;

-- Para os produtos do fabricante 580 adicionar 50 unidades
UPDATE produto SET qtd = qtd + 50 WHERE idfabricante = 580;

-- Zerar o estoque de todos os produtos do fabricante 666;
UPDATE produto SET qtd = 0 WHERE idfabricante=666;


SELECT * FROM produto LIMIT 10,10;