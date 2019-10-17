/*inserir dados na tabela de departamento e depois para inserir o código do gerente fazer atualização (update)*/
insert into departamento values
(5, 'PESQUISA', null, '88/05/22'),
(4, 'ADMINISTRAÇÃO', null, '95/01/01'),
(1, 'SEDE ADMINISTRATIVA', null, '81/06/19');

update departamento
set codGerente = 2
where codigo = 5;

/* MOSTRAR DEPARTAMENTO*/
select * from departamento;


/* INSERIR DADOS */
insert into empregado values (1, 'John', 'B', 'SMITH', '65/01/09', 'RUA 123', 'M', '30000', null, 5),
							 (2, 'FRANKLIN', 'T', 'WONG', '55/12/08', 'RUA 456', 'M', '40000', null, 5),
                             (3, 'ALICIA', 'J', 'ZELAYA', '68/01/19', 'RUA 453', 'F', '25000', null, 4), 
                             (4, 'JENNIFER', 'S', 'WALLACE', '41/06/20', 'RUA 321', 'F', '43000', null, 4), 
                             (5, 'RAMESH', 'K', 'NARAYAN', '62/09/15', 'RUA 999', 'M', '38000', null, 5),
                             (6, 'JOYCE', 'A', 'ENGLISH', '72/07/31', 'RUA 090', 'F', '25000', null, 5),
                             (7, 'AHMAD', 'V', 'JABBAR', '69/03/29', 'RUA 345', 'M', '25000', null, 4),
                             (9, 'JAMES', 'E', 'BORG', '37/11/01', 'RUA 222', 'M', '55000', null, 1);
/* DELETAR */
DELETE FROM empregado
WHERE codigo = 1;

/* MOSTRAR EMPREGADO*/
select * from empregado;

update empregado
set codSuper = 4
where codigo = 7;


/*INSERIR DADOS*/
insert into projeto values  (1, 'PRODUTO X', 'BELLAIRE', 5),
							(2, 'PRODUTO Y', 'SUGARLAND', 5),
							(3, 'PRODUTO Z', 'HOUSTON', 5),
							(10, 'AUTOMATIZAÇÃO', 'STAFFORD', 4),
							(20, 'REORGANIZAÇÃO', 'HOUSTON', 1),
							(30, 'NOVOS BENEFÍCIOS', 'STAFFORD', 4);
                            
/* MOSTRAR PROJETO */
select * from projeto;

/* INSERIR DADOS */
insert into dependente values   (2, 'ALICE', 'F', '86/04/05', 'FILHA'),
								(2, 'THEODORE', 'M', '83/10/25', 'FILHO'),
								(2, 'JOY', 'F', '58/03/01', 'CÔNJUGE'),
								(4, 'ABNER', 'M', '42/02/28', 'CÔNJUGE'),
								(1, 'MICHEL', 'M', '88/01/04', 'FILHO'),
								(1, 'ALICE', 'F', '88/12/30', 'FILHA'),
								(1, 'ELIZABETH', 'F', '67/05/05', 'CÔNJUGE');
                                
/* DELETAR */
DELETE FROM dependente
WHERE codEmp = 1;

/* MOSTRAR DEPENDENTE */
select * from dependente;


/* INSERIR DADOS */
insert into dpto_localizacao values (1, 'HOUSTON'),
									(4, 'STAFFORD'),
									(5, 'BELLAIRE'),
									(5, 'SUGARLAND'),
									(null, 'HOUSTON');

/* MOSTRAR DEPENDENTE */
select * from dpto_localizacao;


/* INSERIR DADOS */
insert into trabalha_em values  (1, 1, '32.5'),
								(1, 2, '7.5'),
								(5, 3, '40.0'),
								(7, 1, '20.0'),
								(7, 2, '20.0'),
								(2, 2, '10.0'),
								(2, 3, '10.0'),
								(2, 10, '10.0'),
								(2, 20, '10.0'),
								(3, 30, '30.0'),
								(3, 10, '10.0'),
								(4, 10, '35.0'),
								(4, 30, '5.0'),
								(4, 30, '20.0'),
                                				(4, 20, '15.0'),
								(9, 20, null);

/* MOSTRAR TRABALHA_EM */
select * from trabalha_em;
