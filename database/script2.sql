create database battery
GO

use battery
GO

CREATE TABLE dbO.tblBaterias (
	idbateria int PRIMARY KEY IDENTITY(0,1) NOT NULL,
	Descricao varchar(50) NOT NULL,
	capacidade decimal(10,5) NOT NULL,
	padrao_cap decimal(10,5) NOT NULL,
	tensao_carga decimal(10,5) NOT NULL,
	corrente decimal(10,5) NOT NULL, 
	tensao_corte decimal(10,5) NOT NULL, 
	corrente_res decimal(10,5) NOT NULL, 
	soc decimal(10,5) NOT NULL,
)
ON [PRIMARY]
GO

CREATE TABLE dbO.tblEnsaio(
	idEnsaio int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idbateria int not null,
	data_ensaio datetime not null,
	tipo int NOT NULL,
	valor decimal(10,5) NOT NULL,
	FOREIGN KEY (idbateria) REFERENCES tblBaterias (idbateria)
)
ON [PRIMARY]
GO

insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 1', 7, 20, 13.5, 1.4, 10.5, 0.030, 98.3)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 2', 7, 20, 13.5, 1.4, 10.5, 0.030, 99.7)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 3', 7, 20, 13.5, 1.4, 10.5, 0.030, 15.5)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 4', 7, 20, 13.5, 1.4, 10.5, 0.030, 33.7)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 5', 7, 20, 13.5, 1.4, 10.5, 0.030, 98.8)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 6', 7, 12, 13.5, 1.4, 10.5, 0.030, 89.7)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 7', 7, 20, 13.5, 1.4, 10.5, 0.030, 75.3)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Unipower 8', 7, 20, 13.5, 1.4, 10.5, 0.030, 88.6)
insert into tblBaterias (Descricao, capacidade, padrao_cap, tensao_carga, corrente, tensao_corte, corrente_res, soc) values ('Bateria Litio 3 em serie', 3, 10, 12.6, 1.0, 9, 0.100, 100)


insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (0, getdate(), 0, 2)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (0, getdate(), 1, 0.015)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (0, getdate(), 2, 130)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (0, getdate(), 2, 128)

insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (1, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (1, getdate(), 1, 0.030)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (1, getdate(), 2, 80)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (1, getdate(), 2, 75)

insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (2, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (2, getdate(), 1, 0.030)

insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (3, getdate(), 0, 7)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (3, getdate(), 1, 0.030)

insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (7, '2019-12-6 17:15:22', 0, 6.72)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (7, '2019-12-10 14:22:45', 0, 6.70)
insert into tblEnsaio (idbateria, data_ensaio, tipo, valor) values (7, '2019-12-12 15:37:09', 0, 6.78)

select * from tblBaterias
select * from tblEnsaio where idbateria=0 and tipo=0
select * from tblEnsaio where idbateria=1 and tipo=0


update tblBaterias set soc = 95 where idbateria = 0
drop table tblEnsaio
drop table tblBaterias

