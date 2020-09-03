 create database EXPRESS_RACE;

#CASE SQLSERVER
create table motoristas (
	idMot int NOT NULL identity(1,1),
	nome varchar(50),
	dtNiv varchar(12),
    cpf varchar(16),
    carModel varchar(20),
    status bit,
	sexo bit,
    
    primary key (idMot)
);

create table passageiros (
	idPass int NOT NULL identity(1,1),
	nome varchar(50),
	dtNiv varchar(12),
    cpf varchar(16),
	sexo bit,
    
    primary key (idPass)
);

create table corridas (
	idCor int NOT NULL identity(1,1),
	idMoto int,
	idPassa int,
    valor decimal(18,2),
    
    primary key (idCor)
);

