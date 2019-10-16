create database empresa;
create table Departamento (
	codigo int primary key not null,
    nomeDepto varchar(20) not null,
    codGerente int not null,
    GerDtInicio varchar(8)
);
create table Empregado (
	codigo int primary key not null,
    nomeIni varchar(10) not null,
    nomeInt varchar(1),
    nomeFin varchar(10) not null,
    dataNasc varchar(8),
    endereco varchar(20),
    sexo varchar(1),
    salario double,
    codSuper int,
    codDpto int not null,
    foreign key(codigo)
    references Departamento(codigo)
);
create table Projeto (
	codProjeto int primary key not null,
    nome varchar(20) not null,
	localizacao varchar(10),
    codDpto int not null,
    foreign key(codDpto)
    references Departamento(codigo)
);
create table Dependente (
	codEmp int primary key not null,
	foreign key(codEmp)
    references Empregado(codigo),
    nome varchar(10) not null,
    sexo varchar(1),
    dataNasc varchar(8),
    parentesco varchar(8)
);
create table dpto_localizacao (
	codDpto int primary key not null,
	foreign key(codDpto)
    references Departamento(codigo),
    localizacao varchar(10)
);
create table trabalha_em (
	codEmp int primary key not null,
    foreign key(codEmp)
    references empregado(codigo)
);
select * from departamento;
select * from empregado;
select * from projeto;
select * from dependente;
select * from dpto_localizacao;
select * from trabalha_em;
