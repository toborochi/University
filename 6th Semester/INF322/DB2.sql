create database Demo;

use Demo;

create table prov
(
	cprv integer not null primary key,	
	nomb char(40) not null,				
	ciud char(2) not null				
);


create table alma
(
	calm integer not null primary key,	
	noma char(40) not null,				
	ciud char(2) not null	
);


create table prod
(
	cprd integer not null primary key,	
	nomp char(40) not null,				
	colo char(15) not null				
);


create table sumi
(
	cprv integer not null,			
	calm integer not null,			
	cprd integer not null,			
	ftra date not null,				
	cant decimal(12,2) not null,		
	prec decimal(12,2) not null,		
	impt decimal(12,2) not null,		
	foreign key(cprv) references prov,
	foreign key(calm) references alma,
	foreign key(cprd) references prod
);

insert into prov values(1,'PROV1','CB')
insert into prov values(2,'PROV2','LP')
insert into prov values(3,'PROV3','SC')
insert into prov values(4,'PROV4','BE')

-- Insertar datos a la tabla de almacenes
insert into alma values(1,'ALM1','CB')
insert into alma values(2,'ALM2','SC')
insert into alma values(3,'ALM3','LP')
insert into alma values(4,'ALM3','BE')

-- Insertar datos a la tabla de productos
insert into prod values(1,'PRD1','ROJO')
insert into prod values(2,'PRD2','VERDE')
insert into prod values(3,'PRD3','CAFE')
insert into prod values(4,'PRD4','ROJO')
insert into prod values(5,'PRD5','AZUL')

-- Insertar datos a la tabla de suministro
insert into sumi values(1,3,1,'1/1/2013',20,5,100)
insert into sumi values(1,2,1,'5/2/2013',10,5,50)
insert into sumi values(1,2,3,'10/1/2013',80,2,160)
insert into sumi values(3,2,3,'5/3/2013',10,2,20)
insert into sumi values(3,1,3,'12/4/2013',40,2,80)
insert into sumi values(1,1,1,'1/1/2012',2,4,8)
insert into sumi values(1,2,1,'2/2/2012',100,5,500)
insert into sumi values(1,2,2,'11/12/2012',40,2,80)
insert into sumi values(3,3,3,'1/3/2014',1,2,2)
insert into sumi values(3,1,2,'12/4/2014',25,2,50)
insert into sumi values(3,1,4,'12/6/2014',15,3,45)
insert into sumi values(4,4,1,'12/6/2014',10,5,50)
insert into sumi values(4,4,2,'12/6/2014',5,2,10)

select * from alma
select * from prod
select * from prov
select * from sumi