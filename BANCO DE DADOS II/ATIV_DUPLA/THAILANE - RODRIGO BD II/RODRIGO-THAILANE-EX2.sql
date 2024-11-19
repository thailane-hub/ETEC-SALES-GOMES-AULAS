    drop database if exists empresa;
    create database empresa;
    use empresa;

    create table setor(
    idsetor int primary key auto_increment,
    nome varchar(50) not null,
    salario decimal(10,2) null,
    jornada varchar(4) null
    )engine=InnoDB;

    create table administrador(
    idadmin int primary key auto_increment,
    nome varchar(30) not null,
    email varchar(50) not null unique,
    senha varchar(20)
    )engine=InnoDB;

    create table vaga(
    idvaga int primary key auto_increment,
    descricao varchar(200) null,
    prazoinicial datetime,
    prazofinal datetime,
    idsetor int,
    idadmin int,
    foreign key(idsetor) references setor(idsetor),
    foreign key(idadmin) references administrador(idadmin)
    
    )engine=InnoDB;

    create table candidato(
    idcandidato int primary key auto_increment,
    nome varchar(50) not null,
    cpf char(11) not null unique,
    email varchar(50) not null unique,
    estadocivil varchar(15) null,
    cidade varchar(30) not null,
    estado char(2) not null
    )engine=InnoDB;

    create table setor_vaga(
    idsetor int,
    idvaga int,
    foreign key(idsetor) references setor(idsetor),
    foreign key(idvaga) references vaga(idvaga)
    )engine=InnoDB;


    create table candidato_vaga(
    idcandidato int,
    idvaga int,
    foreign key(idcandidato) references candidato(idcandidato),
    foreign key(idvaga) references vaga(idvaga)
    )engine=InnoDB;

