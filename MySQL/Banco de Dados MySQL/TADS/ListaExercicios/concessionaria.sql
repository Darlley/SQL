create database concessionaria;

create table automovel (
	codigo int,
    ano int,
    fabricante varchar(50),
    modelo varchar(50),
    pais varchar(50),
    preco_tabela float
);
create table revendedora (
	cnpj char(14),
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
	codigo int,
    ano int,
    cnpj char(14),
    quantidade int,
    FOREIGN KEY (codigo)
    REFERENCES automovel(codigo),
    FOREIGN KEY (ano)
    REFERENCES automovel(ano),
    FOREIGN KEY (cnpj)
    REFERENCES revendedora(cnpj)
);

create table negocio (
	codigo int,
    ano int,
    identidade int,
    cnpj char(14),
    data_venda varchar(8),
    preco_venda float,
    FOREIGN KEY (codigo)
    REFERENCES automovel(codigo),
    FOREIGN KEY (ano)
    REFERENCES automovel(ano),
    FOREIGN KEY (identidade)
    REFERENCES consumidor(identidade)
);
