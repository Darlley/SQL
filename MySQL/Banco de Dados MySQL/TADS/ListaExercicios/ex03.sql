create database transporte_Aereo;

create table aviao (
	CodAviao int primary key not null,
    nome varchar(60)
);

create table piloto (
	CodPiloto int primary key not null,
    nome varchar(60) not null,
    HorasVoo int null
);

create table cidade (
	CodCidade int primary key not null,
    nome varchar(60) not null
);

create table voo (
	CodPiloto int not null,
    CodAviao int not null,
    dataAtual varchar(10) not null,
    CodCidadeOrigem int not null,
    CodCidadeDestino int not null,
    precoPassagem real
);
alter table voo ADD FOREIGN KEY (CodPiloto) REFERENCES piloto(CodPiloto);
alter table voo ADD FOREIGN KEY (CodAviao) REFERENCES aviao(CodAviao);
alter table voo ADD FOREIGN KEY (CodCidadeOrigem) REFERENCES cidade(CodCidade);
alter table voo ADD FOREIGN KEY (CodCidadeDestino) REFERENCES cidade(CodCidade);
