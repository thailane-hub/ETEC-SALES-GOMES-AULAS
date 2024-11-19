

-- 1) Conte a quantidade de alunos do sexo feminino usando as cláusulas COUNT e WHERE.	

SELECT COUNT(*) from aluno where sexoAluno = 'F' ;

-- 2) Conte a quantidade de alunos do sexo masculino usando as cláusulas COUNT e WHERE

SELECT COUNT(*) from aluno where sexoAluno = 'M' ;

-- 3) Conte a quantidade de alunos do sexo masculino e feminino em um único select usando as cláusulas COUNT e group by.

select sexoaluno 'ALUNO', COUNT(*)'QTD' from aluno group by sexoAluno;

-- 4) Qual é a diferença entre o número de homens e mulheres? Use a cláusulas Count, Where.

-- select (quantidade do sexo masculino) - (sexo femenino);

select (select COUNT(*) from aluno where sexoAluno = 'F') - (select COUNT(*) from aluno where sexoAluno = 'M')'DIFERENÇA';

-- 5)	Qual é a média de idade dos estudantes da escola Etec? Usar AVG

select AVG(IdadeAluno) from aluno;


-- 6)	Selecione o nome dos alunos mais novos da escola, Usar Where e MIN.

select NomeAluno 'NOME', idadealuno 'IDADE' from aluno  where IdadeAluno = (select min(IdadeAluno) from aluno);


-- 7)	Selecione o nome dos alunos mais velhos da escola, Usar Where e MAX.

select NomeAluno 'NOME', idadealuno 'IDADE' from aluno where IdadeAluno = (select max(IdadeAluno) from aluno);


-- 8) Selecione todas as idades possíveis, ordene de forma crescente e conte quantos alunos possui cada uma das idades. Usar COUNT, GROUP BY, e ORDER BY.
-- Ex:
-- 	Idade       Quantidade
-- 	----------- -----------
-- 	17          2
-- 	18          31
-- 	19          18
-- 	20          149
-- 	21          75

SELECT idadealuno'IDADE', COUNT(codaluno)'QUANTIDADE' FROM aluno GROUP BY idadealuno ORDER BY idadealuno;



-- 9) Liste todas as cidades onde os alunos residem e conte quantos aluno residem em cada cidade, ordene as cidades em ordem decrescente. Usar COUNT, GROUP BY, e ORDER BY.
-- Ex:
-- 	Cidade               Quantidade
-- 	-------------------- -----------
-- 	Alumínio             53
-- 	Boituva              191
-- 	Cabreúva             54
-- 	Indaiatuba           43
-- 	Iperó                40
-- 	Itu                  179

SELECT cidade'CIDADE', COUNT(codaluno)'QUANTIDADE' FROM aluno GROUP BY cidade ORDER BY cidade ASC;



-- 10) Selecione o nome, o sexo, a idade, e a cidade do aluno onde nome se inicializa com A, sexo é igual a F, cidade é igual Sorocaba e idade é maior que 25 e menor que 40.
-- Usar Where e like.

SELECT nomealuno'NOME', sexoaluno'SEXO', idadealuno'IDADE', cidade'CIDADE' FROM aluno WHERE nomealuno LIKE 'A%'AND  sexoaluno = 'F' AND cidade = 'SOROCABA' AND idadealuno > 25 AND idadealuno <40;


-- 11) Selecione o nome do aluno e o nome do curso onde o período da matricula é noturno (N) e o curso é Logística.
-- Usar Where

SELECT a.nomealuno'ALUNO', c.nomecurso'CURSO', ac.periodo'PERIODO' 
    FROM aluno AS a 
    INNER JOIN alunomatriculadocurso AS ac ON ac.codaluno = a.codaluno
    INNER JOIN curso AS c ON c.codcurso = ac.codcurso
    WHERE ac.periodo = 'N' AND c.nomecurso = 'Logística';

-- 12) Selecione todas as disciplinas do curso de Análise e Desenvolvimento de Sistemas. Usar Where.

    SELECT d.nomedisciplina'DISCIPLINAS ADS'
    FROM disciplina AS d
    INNER JOIN cursospossuidisciplina AS cd ON d.coddisciplina = cd.coddisciplina
    INNER JOIN curso AS c ON c.codcurso = cd.codcurso
    WHERE c.nomecurso = 'Análise e Desenvolvimento de Sistemas';


-- 13) Selecione todas as disciplinas do curso de Fabricação Mecânica. Usar INNER JOIN

    SELECT d.nomedisciplina 'FABRICAÇÃO MECÂNICA'
    FROM disciplina AS d
    INNER JOIN cursospossuidisciplina AS cpd ON d.coddisciplina = cpd.coddisciplina
    INNER JOIN curso AS c ON c.codcurso = cpd.codcurso
    WHERE c.nomecurso = 'FABRICAÇÃO MECANICA';


-- 14) Por quantas disciplinas cada curso é composto. Usar COUNT, INNER JOIN, GROUP BY


    


-- 15) Selecione o nome do curso e o nome de seu respectivo coordenador. Usar INNER JOIN



-- 16) Obtenha o nome do professor e a disciplina que ele ministra. Usar Inner Join


-- 17) Crie um select que traga o nome do professor e seus respectivos salários nas diversas disciplinas que ministra. Usar Inner Join




-- 18) Crie um select que traga como resultado o salário total do professor RAFAEL RIBEIRO CLAUDINO. Usar SUM, Where e GROUP BY



-- 19) Crie um select que traga como resultado o salário total do professor ALEXANDRE SANCHES. Usar SUM, INNER JOIN, Where e GROUP BY




-- 20) Crie um select que traga o nome dos professores e seus respectivos salario total. Usar SUM, Where e GROUP BY




-- 21) Crie um select que traga o nome do professor e seu respectivo salário para o professor que possui o maior salário. Usar LIMIT, SUM, Where,GROUP BY e ORDER BY



-- 22) Selecione o nome do curso, o nome do aluno, o nome da disciplina, a nota do aluno na disciplina, onde professor for igual a MARCIUS ANNOROZO SILVA. 
-- Usar INNER JOIN e WHERE



-- 23) Qual é a nota média de cada disciplina. Usar AVG, INNER JOIN e GROUP BY

-- TRUNCATE(AVG(amd.nota) reduz as casa decimais,2)

    SELECT d.nomedisciplina'DISCIPLINA', TRUNCATE(AVG(amd.nota),2)'NOTA MÉDIA'
    FROM disciplina AS d
    INNER JOIN alunomatriculadodisciplina AS amd ON amd.coddisciplina = d.coddisciplina
    GROUP BY d.nomedisciplina;


-- 24) Para que o aluno seja aprovado é necessário que ele possua nota superior a 5. Qual disciplina possui o menor indice de reprova. Usar LIMIT, COUNT, INNER JOIN, GROUP BY, ORDER BY


