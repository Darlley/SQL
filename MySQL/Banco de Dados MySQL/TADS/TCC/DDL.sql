create database tcc;
create table aluno (
	matr int primary key not null,
    nome varchar(10),
    ingresso varchar(8)
);
select * from aluno;

create table professor (
	codP int primary key not null,
    nome varchar(10),
    especialidade varchar(20)
);
select * from professor;

create table apresentacaoBanca (
	nro int primary key not null,
    titulo varchar(50),
    dataApr varchar(8),
    hora varchar(5),
    nota double not null
);
select * from apresentacaobanca;
