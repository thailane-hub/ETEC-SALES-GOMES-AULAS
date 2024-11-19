-- https://meet.google.com/rbr-egrw-mxj

-- DIV - A
-- RODRIGO FONSECA
-- THAILANE SANTOS


-- 1) Conte a quantidade de alunos do sexo feminino usando as cláusulas 
-- COUNT e WHERE.

    select count(*)'Feminino' from aluno where sexoaluno = 'F';

-- 2) Conte a quantidade de alunos do sexo masculino usando as cláusulas 
-- COUNT e WHERE 

    select count(*)'Masculino' from aluno where sexoaluno = 'M';

-- 3) Conte a quantidade de alunos do sexo masculino e feminino em um único 
-- select usando as cláusulas COUNT e group by. 

    select sexoaluno'Sexo', count(*)'Alunos' from aluno group by sexoaluno;
    
-- 4) Qual é a diferença entre o número de homens e mulheres? Use a 
-- cláusulas Count, Where. 

    SELECT (SELECT COUNT(*) FROM aluno WHERE Sexoaluno = 'M')-(SELECT COUNT(*) FROM aluno WHERE Sexoaluno = 'F' ) AS 'RESULTADO';

-- 5) Qual é a média de idade dos estudantes da escola Etec? Usar AVG 
 
    SELECT AVG(idadealuno) FROM aluno;

-- 6) Selecione o nome dos alunos mais novos da escola, Usar Where e MIN. 

    SELECT nomealuno'Nome', idadealuno'Idade' FROM aluno WHERE idadealuno = (SELECT MIN(idadealuno) FROM aluno);

-- 7) Selecione o nome dos alunos mais velhos da escola, Usar Where e MAX. 
 
    SELECT nomealuno'Nome', idadealuno'Idade' FROM aluno WHERE idadealuno = (SELECT MAX(idadealuno) FROM aluno);

    --CONFERINDO A RESPOSTA    SELECT nomealuno'Nome', idadealuno'Idade' FROM aluno  ORDER BY idadealuno DESC;


-- 8) Selecione todas as idades possíveis, ordene de forma crescente e conte 
-- quantos alunos possui cada uma das idades. Usar COUNT, GROUP BY, e ORDER 
-- BY. 
-- Ex: 
--  Idade       Quantidade 
--  ----------- ----------- 
--  17          2 
--  18          31 
--  19          18 
--  20          149 
--  21          75 

    SELECT idadealuno'Idade', count(idadealuno)'Quantidade' FROM ALUNO GROUP BY idadealuno ORDER BY idadealuno;
 
-- 9) Liste todas as cidades onde os alunos residem e conte quantos aluno 
-- residem em cada cidade, ordene as cidades em ordem decrescente. Usar 
-- COUNT, GROUP BY, e ORDER BY. 
-- Ex: 
--  Cidade               Quantidade 
--  -------------------- ----------- 
--  Alumínio             53 
--  Boituva              191 
--  Cabreúva             54 
--  Indaiatuba           43 
--  Iperó                40 
--  Itu                  179 
 
    SELECT cidade'Cidade', COUNT(nomealuno)'Quantidade' FROM aluno GROUP BY cidade ORDER BY cidade DESC;

-- 10) Selecione o nome, o sexo, a idade, e a cidade do aluno onde nome se 
-- inicializa com A, sexo é igual a F, cidade é igual Sorocaba e idade é 
-- maior que 25 e menor que 40. 
-- Usar Where e like. 
    
    SELECT nomealuno'Nome', sexoaluno 'Sexo', idadealuno 'Idade', cidade 'Cidade' FROM aluno WHERE nomealuno like 'a%' AND sexoaluno = 'F' AND cidade = 'sorocaba' AND idadealuno >25 AND idadealuno <40; 

-- 11) Selecione o nome do aluno e o nome do curso onde o período da 
-- matricula é noturno (N) e o curso é Logística. 
-- Usar Where 

    SELECT a.nomealuno 'aluno', ac.periodo as 'Periodo', c.nomecurso 'Curso' 
    FROM aluno AS a
    INNER JOIN alunomatriculadocurso AS ac ON a.codaluno = ac.codaluno
    INNER JOIN curso AS c ON ac.codcurso =c.codcurso
    WHERE ac.periodo = 'N' AND c.nomecurso = 'Logística';
 
-- 12) Selecione todas as disciplinas do curso de Análise e Desenvolvimento 
-- de Sistemas. Usar Where. 
 
    SELECT d.nomedisciplina 'Disciplinas ADS'
    from disciplina AS d
    INNER JOIN cursospossuidisciplina AS cd ON d.coddisciplina = cd.coddisciplina
    INNER JOIN curso AS c  ON cd.codcurso = c.codcurso
    WHERE c.nomecurso ='Análise e Desenvolvimento de Sistemas';

-- 13) Selecione todas as disciplinas do curso de Fabricação Mecânica. Usar 
-- INNER JOIN 

    SELECT d.nomedisciplina 'Disciplinas F. Mecânica'
    from disciplina AS d
    INNER JOIN cursospossuidisciplina AS cd ON d.coddisciplina = cd.coddisciplina
    INNER JOIN curso AS c  ON cd.codcurso = c.codcurso
    WHERE c.nomecurso ='Fabricação Mecânica';

-- 14) Por quantas disciplinas cada curso é composto. Usar COUNT, INNER 
-- JOIN, GROUP BY 

    SELECT  c.nomecurso 'Curso', COUNT(d.coddisciplina)'Qtd Disciplinas'
    FROM disciplina AS d
    INNER JOIN cursospossuidisciplina AS cd ON cd.coddisciplina = d.coddisciplina
    INNER JOIN curso AS c ON cd.codcurso = c.codcurso
    GROUP by c.codcurso;



-- 15) Selecione o nome do curso e o nome de seu respectivo coordenador. 
-- Usar INNER JOIN 

    SELECT c.nomecurso 'Curso', p.nomeprofessor 'Coordenador' 
    FROM curso AS c
    INNER JOIN professor AS p ON c.coordenadorcurso = p.codprofessor;
    

-- 16) Obtenha o nome do professor e a disciplina que ele ministra. Usar 
-- Inner Join 

    SELECT p.nomeprofessor 'Professor', d.nomedisciplina 'Disciplina'
    FROM professor AS p
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor
    INNER JOIN disciplina AS d ON pd.coddisciplina = d.coddisciplina
    WHERE p.codprofessor = pd.codprofessor;

-- 17) Crie um select que traga o nome do professor e seus respectivos 
-- salários nas diversas disciplinas que ministra. Usar Inner Join 

    SELECT p.nomeprofessor 'Professor', d.nomedisciplina 'Disciplina', pd.salario 'Salario'
    FROM professor AS p
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor
    INNER JOIN disciplina AS d ON pd.coddisciplina = d.coddisciplina
    WHERE p.codprofessor = pd.codprofessor;

-- 18) Crie um select que traga como resultado o salário total do professor 
-- RAFAEL RIBEIRO CLAUDINO. Usar SUM, Where e GROUP BY 

    SELECT p.nomeprofessor'Professor', SUM(pd.salario) 'Salario'   
    FROM professor AS p     
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor    
    WHERE p.nomeprofessor = 'RAFAEL RIBEIRO CLAUDINO'
    GROUP BY p.nomeprofessor;


-- 19) Crie um select que traga como resultado o salário total do professor 
-- ALEXANDRE SANCHES. Usar SUM, INNER JOIN, Where e GROUP BY 

    SELECT p.nomeprofessor 'Professor', SUM(pd.salario) 'Salario'    
    FROM professor AS p     
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor    
    WHERE p.nomeprofessor = 'ALEXANDRE SANCHES'
    GROUP BY p.nomeprofessor;



-- 20) Crie um select que traga o nome dos professores e seus respectivos 
-- salario total. Usar SUM, Where e GROUP BY 

    SELECT p.nomeprofessor'Professor', SUM(pd.salario) 'Salario'    
    FROM professor AS p     
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor    
    GROUP BY p.nomeprofessor;

-- 21) Crie um select que traga o nome do professor e seu respectivo salário 
-- para o professor que possui o maior salário. Usar LIMIT, SUM, Where,GROUP 
-- BY e ORDER BY 
    
    SELECT p.nomeprofessor'Professor', SUM(pd.salario) 'Salario'    
    FROM professor AS p     
    INNER JOIN professorministrardisciplina AS pd ON p.codprofessor = pd.codprofessor    
    GROUP BY p.nomeprofessor
    ORDER BY Salario DESC LIMIT 1;


-- 22) Selecione o nome do curso, o nome do aluno, o nome da disciplina, a 
-- nota do aluno na disciplina, onde professor for igual a MARCIUS ANNOROZO SILVA. 
-- Usar INNER JOIN e WHERE

    SELECT c.nomecurso 'CURSO', a.nomealuno'ALUNO', d.nomedisciplina 'DISCIPLINA', ad.nota'NOTA'
    FROM curso AS c
    INNER JOIN alunomatriculadocurso AS ac ON c.codcurso = ac.codcurso
    INNER JOIN aluno AS a ON a.codaluno = ac.codaluno
    INNER JOIN alunomatriculadodisciplina AS ad ON ad.codaluno = a.codaluno
    INNER JOIN disciplina AS d ON ad.coddisciplina = d.coddisciplina
    INNER JOIN professorministrardisciplina AS pd ON pd.coddisciplina = d.coddisciplina
    INNER JOIN professor AS p ON p.CodProfessor = pd.CodProfessor
    WHERE p.nomeprofessor = 'MARCIUS ANNOROZO SILVA';

    
 --   CONTANDO QTD DE ALUNOS DO PROFESSOR MARCIUS PARA VERIFICAR SE A RESPOSTA BATE
 --   id disciplinas professor marcius -137 138 133
 --   id professor marcius 23 


 --   SELECT  COUNT(ad.codaluno) FROM alunomatriculadodisciplina AS ad
 --   INNER JOIN disciplina AS d ON ad.coddisciplina = d.coddisciplina
 --   INNER JOIN professorministrardisciplina AS pd ON pd.coddisciplina = d.coddisciplina
--    WHERE pd.codprofessor = '23';

--    INVESTIGAR O PKE DESTA LINHA DE CODIGO INTERFERIR NO RESULTADO
--    INNER JOIN cursospossuidisciplina AS cd ON d.coddisciplina = cd.coddisciplina



-- 23) Qual é a nota média de cada disciplina. Usar AVG, INNER JOIN e GROUP 
-- BY

    SELECT d.nomedisciplina'DISCIPLINA', TRUNCATE(AVG(amd.nota),2)'NOTA MÉDIA'
    FROM disciplina AS d
    INNER JOIN alunomatriculadodisciplina AS amd ON amd.coddisciplina = d.coddisciplina
    GROUP BY d.nomedisciplina ;

-- 24) Para que o aluno seja aprovado é necessário que ele possua nota 
-- superior a 5. Qual disciplina possui o menor indice de reprova. Usar 
-- LIMIT, COUNT, INNER JOIN, GROUP BY, ORDER BY 

    SELECT d.nomedisciplina'DISCIPLINA COM MENOR REPROVAÇÃO',TRUNCATE(COUNT(amd.nota) /
    ( SELECT COUNT(codaluno) from alunomatriculadodisciplina 
    WHERE alunomatriculadodisciplina.coddisciplina = amd.coddisciplina)*100,2)'INDICE DE APROVAÇÃO' 
    FROM disciplina AS d
    INNER JOIN alunomatriculadodisciplina AS amd ON amd.coddisciplina = d.coddisciplina
    WHERE (amd.nota > 5)
    GROUP BY d.nomedisciplina ORDER BY 2 DESC LIMIT 1;


--na subconsulta ele faz uma consulta interna ao alunomatriculadodisciplina ou seja como se fosse um select comum e compara se é igual ao  amd.coddisciplina(que é  o de fora) para comparar;
    
--( SELECT COUNT(alunomatriculadodisciplina.nota) from alunomatriculadodisciplina where alunomatriculadodisciplina.nota > 0)


