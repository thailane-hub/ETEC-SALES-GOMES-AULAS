

-- 1) Conte a quantidade de alunos do sexo feminino usando as cláusulas COUNT e WHERE.	

SELECT COUNT(*) from aluno where sexoAluno = 'F' ;

-- 2) Conte a quantidade de alunos do sexo masculino usando as cláusulas COUNT e WHERE

SELECT COUNT(*) from aluno where sexoAluno = 'M' ;

-- 3) Conte a quantidade de alunos do sexo masculino e feminino em um único select usando as cláusulas COUNT e group by.

select COUNT(*) from aluno group by sexoAluno;

-- 4) Qual é a diferença entre o número de homens e mulheres? Use a cláusulas Count, Where.

-- select (quantidade do sexo masculino) - (sexo femenino);

select (select COUNT(*) from aluno where sexoAluno = 'F') - (select COUNT(*) from aluno where sexoAluno = 'M');

