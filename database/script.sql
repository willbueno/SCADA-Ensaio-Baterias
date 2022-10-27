CREATE TABLE dbO.tblBaterias (
	idbateria int PRIMARY KEY IDENTITY(0,1) NOT NULL,
	Descricao varchar(50) NOT NULL,
	capacidade decimal(10,5) NOT NULL,
	tensao decimal(10,5) NOT NULL,
	tensao_carga decimal(10,5) NOT NULL,
	corrente decimal(10,5) NOT NULL,
	soc decimal(10,5) NOT NULL,
)
ON [PRIMARY]
GO

CREATE TABLE dbO.tblEnsaio(
	idEnsaio int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idbateria int not null,
	data datetime not null,
	tipo int NOT NULL,
	valor decimal(10,5) NOT NULL,

	FOREIGN KEY (idbateria) REFERENCES tblBaterias (idbateria)
)
ON [PRIMARY]
GO

insert into tblBaterias (Descricao, capacidade, tensao, tensao_carga, corrente, soc) values ('Bateria Unipower 1', 7, 12, 13.5, 0.030, 100)
insert into tblBaterias (Descricao, capacidade, tensao, tensao_carga, corrente, soc) values ('Bateria Unipower 2', 7, 12, 13.5, 0.030, 100)
insert into tblBaterias (Descricao, capacidade, tensao, tensao_carga, corrente, soc) values ('Bateria Unipower 3', 7, 12, 13.5, 0.030, 100)
insert into tblBaterias (Descricao, capacidade, tensao, tensao_carga, corrente, soc) values ('Bateria Unipower 4', 7, 12, 13.5, 0.030, 100)

update tblBaterias set soc = 95 where idbateria = 0

insert into tblEnsaio (idbateria, data, tipo, valor) values (0, getdate(), 0, 2)
insert into tblEnsaio (idbateria, data, tipo, valor) values (0, getdate(), 1, 0.015)
insert into tblEnsaio (idbateria, data, tipo, valor) values (0, getdate(), 2, 130)
insert into tblEnsaio (idbateria, data, tipo, valor) values (0, getdate(), 2, 128)

insert into tblEnsaio (idbateria, data, tipo, valor) values (1, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data, tipo, valor) values (1, getdate(), 1, 0.030)
insert into tblEnsaio (idbateria, data, tipo, valor) values (1, getdate(), 2, 80)
insert into tblEnsaio (idbateria, data, tipo, valor) values (1, getdate(), 2, 75)

insert into tblEnsaio (idbateria, data, tipo, valor) values (2, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data, tipo, valor) values (2, getdate(), 1, 0.030)

insert into tblEnsaio (idbateria, data, tipo, valor) values (3, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data, tipo, valor) values (3, getdate(), 1, 0.030)

select * from tblBaterias
select * from tblEnsaio where idbateria=1 and tipo=0
select * from tblEnsaio where idbateria=2 and tipo=0

drop table tblEnsaio
drop table tblBaterias