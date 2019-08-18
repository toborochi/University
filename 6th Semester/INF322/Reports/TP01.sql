create database Demo;

use Demo;

-- TABLA: Proveedores
create table prov
(
	cprv integer not null primary key,	
	nomb char(40) not null,				
	ciud char(2) not null				
);


-- TABLA: Almacen
create table alma
(
	calm integer not null primary key,	
	noma char(40) not null,				
	ciud char(2) not null	
);

-- TABLA: Productos
create table prod
(
	cprd integer not null primary key,	
	nomp char(40) not null,				
	colo char(15) not null				
);

-- TABLA: Suministros
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


