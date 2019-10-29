create database concessionaria;

create table automovel (
	codigo int primary key,
    ano int,
    fabricante varchar(50),
    modelo varchar(50),
    pais varchar(50),
    preco_tabela float
);
create table revendedora (
	cnpj char(14) primary key,
	nome varchar(50),
	proprietario varchar(50),
	cidade varchar(50),
	estado char(2)
);
create table consumidor (
	identidade int,
 	nome varchar(50),
	endereco varchar(50),
	cpf varchar(11)
);
create table estoque (
	codEstoque int primary key,
	codigo int,
	ano int,
	cnpj char(14),
	quantidade int
	check (quantidade > 1 and quantidade < 10)
);
alter table estoque ADD FOREIGN KEY (codigo) REFERENCES automovel(codigo);
alter table estoque ADD FOREIGN KEY (ano) REFERENCES automovel(ano); /*NÃO VAI*/
alter table estoque ADD FOREIGN KEY (cnpj) REFERENCES revendedora(cnpj);

create table negocio (
	codigo int,
	ano int,
	identidade int,
	cnpj char(14),
	data_venda varchar(8),
	preco_venda float
);
alter table negocio ADD FOREIGN KEY (codigo) REFERENCES automovel(codigo);
alter table negocio ADD FOREIGN KEY (ano) REFERENCES automovel(ano); /*NÃO VAI*/
alter table negocio ADD FOREIGN KEY (identidade) REFERENCES consumidor(identidade); /*NÃO VAI*/
