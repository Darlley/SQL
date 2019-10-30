create database exercicio04;

create table cidade (
	CodCidade int primary key not null,
    nomeCidade varchar(15)
);

insert into cidade values	(1,"Campo Grande"),
							(2, "Dourados"),
							(3, "Corumbá"),
							(4, "Três Lagoas"),
							(5, "Ponta Porã"),
							(6, "Rio Verde"),
							(7, "Porto Murtinho"),
							(8, "Bonito"),
							(9, "Paranaíba");
select * from cidade;
