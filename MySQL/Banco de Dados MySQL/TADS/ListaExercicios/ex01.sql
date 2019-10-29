create database cadastro;

create table marca (
	codMarca int primary key not null,
    descricao varchar(60)
);
create table modelo (
	codModelo int primary key not null,
    codMarca int,
    FOREIGN KEY (codMarca)
    REFERENCES marca(codMarca)
);
create table proprietario (
	codProprietario int primary key not null,
    nome varchar(60)
);
create table categoria (
	codCategoria int primary key not null,
    descricao varchar(60)
);
create table veiculo (
	placa char(7) primary key not null,
	codCategoria int,
    codModelo int not null,
    codMarca int not null,
    anoFabricacao int not null,
    check (anoFabricao >= 1980 and 2012),
    FOREIGN KEY (codCategoria)
    REFERENCES categoria(codCategoria),
    FOREIGN KEY (codModelo)
    REFERENCES modelo(codModelo),
    FOREIGN KEY (codMarca)
    REFERENCES marca(codMarca)
);
create table veiculo_proprietario (
	placa char(7),
	codProprietario int,
	datacompra datetime,
    check (datacompra >= 2019),
    FOREIGN KEY (placa)
    REFERENCES veiculo(placa)
);
