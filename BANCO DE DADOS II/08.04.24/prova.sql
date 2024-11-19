drop database if exists hotel;
create database hotel;
use hotel;

create table quartos(
idquarto int primary key auto_increment,
tipo varchar(30) not null,
precodiaria float not null,
disponivel int not null
)engine=InnoDb;

create table hospedes(
idhospede int primary key auto_increment,
nome varchar(30) not null,
email varchar(70) null,
telefone char(9) not null
)engine=InnoDb;

create table reservas(
idreserva int primary key auto_increment,
dataentrda date not null,
datasaida date not null,
idquarto int,
idhospede int,
foreign key(idquarto) references quartos(idquarto),
foreign key(idhospede) references hospedes(idhospede)
)engine=InnoDb;

insert into quartos()
values(1,'simples',150,0);
insert into quartos()
values(2,'duplo',200,1);

insert into hospedes()
values(1,'Rogerio','rogerio@gmail.com','991912254');
insert into hospedes()
values(2,'Diogo','diogo@gmail.com','991815257');

insert into reservas()
values(1,'2024-04-08','2024-04-12',2,1);
insert into reservas()
values(2,'2024-05-14','2024-05-22',1,2);

select precodiaria from quartos where precodiaria  between 100 and 200;

select nome from hospedes where nome like 'm%' and '%@gmail.com';

select disponivel from quartos where tipo = 'suíte' and precodiaria < 300;

update quartos set precodiaria = 150 where idquarto = 8;

update quartos set precodiaria = 200 where tipo = 'duplo' and precodiaria < 200;

delete from hospedes where 'j%' and email like '%hotmail%';

delete from reservas where idhospede = 5;



