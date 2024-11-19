show databases;

use empresa;

show tables;

describe setor;

insert into setor (idsetor, nome, salario, jornada) values (1, 'Expedição', 1395.94, 8);
insert into setor (idsetor, nome, salario, jornada) values (2, 'Produção', 1213.48, 8);
insert into setor (idsetor, nome, salario, jornada) values (3, 'Administração', 1654.83, 6);
insert into setor (idsetor, nome, salario, jornada) values (4, 'Recursos Humanos', 1026.38, 6);
insert into setor (idsetor, nome, salario, jornada) values (5, 'Vendas', 2559.44, 8);


insert into administrador (idadmin, nome, email, senha) values (1, 'Sarita Gibbe', 'saritagibbe@hotmail.com.br', 'jM5~FCJn{');
insert into administrador (idadmin, nome, email, senha) values (2, 'Rosabella Beverage', 'rosabellabeverage@bol.com.br', 'wK7''ckDq');
insert into administrador (idadmin, nome, email, senha) values (3, 'Gabriel Jentet', 'cinnamonjentet@bol.com.br', 'bM0>L=\i#{');
insert into administrador (idadmin, nome, email, senha) values (4, 'Norbet Thorndycraft', 'northrup@outlook.com', 'eW5%YPs&KUM>');
insert into administrador (idadmin, nome, email, senha) values (5, 'Gianna Lyven', 'gianna@gmail.com', 'yH2}sl"@"`');

insert into vaga (idvaga, descricao, prazoinicial, prazofinal, idsetor, idadmin) values (1, 'Dut eros. Suspendisse accumsan tortor quis. Sed ante.', '2017-10-10 17:59:45', '2018-09-20 00:57:02', 1, 5);
insert into vaga (idvaga, descricao, prazoinicial, prazofinal, idsetor, idadmin) values (2, 'Duis bibendum, felis sed a justo. Aliquam quis turpi.', '2017-04-21 12:54:10', '2018-12-23 10:34:39', 2, 1);
insert into vaga (idvaga, descricao, prazoinicial, prazofinal, idsetor, idadmin) values (3, 'Cum sociis natoque penat ma In blandit ultrices enim.', '2017-06-28 19:19:23', '2018-01-20 10:53:20', 3, 4);
insert into vaga (idvaga, descricao, prazoinicial, prazofinal, idsetor, idadmin) values (4, 'In hac habitasse platea dictumst. Morbi vestibulum,is', '2017-07-02 09:49:20', '2018-01-01 05:35:12', 4, 2);
insert into vaga (idvaga, descricao, prazoinicial, prazofinal, idsetor, idadmin) values (5, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', '2017-02-06 16:57:10', '2018-10-15 16:46:24', 5, 3);

insert into setor_vaga (idsetor, idvaga) values (1, 5);
insert into setor_vaga (idsetor, idvaga) values (2, 3);
insert into setor_vaga (idsetor, idvaga) values (3, 1);
insert into setor_vaga (idsetor, idvaga) values (4, 2);
insert into setor_vaga (idsetor, idvaga) values (5, 4);

insert into candidato (idcandidato, nome, cpf, email, estadocivil, cidade, estado) values (1, 'Gabriel Stain', '02494323905', 'gabriel@bol.com.br', 'solteiro', 'São paulo', 'SP');
insert into candidato (idcandidato, nome, cpf, email, estadocivil, cidade, estado) values (2, 'Valeria Mation', '02105580408', 'valeria@outlook.com.br', 'casado', 'Rezende', 'RJ');
insert into candidato (idcandidato, nome, cpf, email, estadocivil, cidade, estado) values (3, 'Bartholomeu Smeuin', '70679272056', 'bartholomeu@gmail.com', 'viuvo', 'Belo Horizonte', 'MG');
insert into candidato (idcandidato, nome, cpf, email, estadocivil, cidade, estado) values (4, 'Phillipe Borgnet', '81300434067', 'phillipe@outlook.com', 'solteiro', 'Porto Alegre', 'RS');
insert into candidato (idcandidato, nome, cpf, email, estadocivil, cidade, estado) values (5, 'Daryl Reynoldson', '28616454974', 'daryl@uol.com', 'casado', 'Sorocaba', 'SP');

insert into candidato_vaga (idcandidato, idvaga) values (1, 5);
insert into candidato_vaga (idcandidato, idvaga) values (2, 3);
insert into candidato_vaga (idcandidato, idvaga) values (3, 4);
insert into candidato_vaga (idcandidato, idvaga) values (4, 1);
insert into candidato_vaga (idcandidato, idvaga) values (5, 2);

select * from candidato;

select * from candidato where nome like 'g%';

delete from vaga where prazofinal between 2018-01-01 and 2018-01-20;

update administrador set email  ='teste@gmail.com' where email like '%@bol.com.br';

select * from candidato where estadocivil = 'solteiro';

select * from venda where dt < 2018-12-03;







