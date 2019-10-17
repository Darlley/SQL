create database empresa;
drop database empresa;
create table Departamento (
	codigo int primary key not null,
    nomeDepto varchar(20) not null,
    codGerente int,
    GerDtInicio varchar(8)
);
select * from departamento;
alter table departamento ADD FOREIGN KEY (codGerente) REFERENCES empregado(codigo);

create table Empregado (
	codigo int primary key,
    nomeIni varchar(10) not null,
    nomeInt varchar(1),
    nomeFin varchar(10) not null,
    dataNasc varchar(8),
    endereco varchar(20),
    sexo varchar(1),
    salario double,
    codSuper int,
    codDpto int not null,
    foreign key(codDpto)
    references Departamento(codigo)
);
drop table empregado;
select * from empregado;

create table Projeto (
	codProjeto int primary key not null,
    nome varchar(20) not null,
	localizacao varchar(10),
    codDpto int not null,
    foreign key(codDpto)
    references Departamento(codigo)
);
select * from projeto;

create table Dependente (
	codEmp int,
    nome varchar(10) not null,
    sexo varchar(1),
    dataNasc varchar(8),
    parentesco varchar(8)
);
select * from dependente;
alter table dependente ADD FOREIGN KEY (codEmp) REFERENCES empregado(codigo);

create table dpto_localizacao (
	codDpto int,
    localizacao varchar(10)
);
select * from dpto_localizacao;
alter table dpto_localizacao ADD foreign key(codDpto) references Departamento(codigo);

create table trabalha_em (
	codEmp int,
    codProjeto int,
    horas double
);
select * from trabalha_em;
alter table trabalha_em ADD foreign key(codEmp) references empregado(codigo);
alter table trabalha_em ADD foreign key(codProjeto) references projeto(codProjeto);
