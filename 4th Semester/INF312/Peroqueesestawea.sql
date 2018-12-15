create database NuevaPrueba
use NuevaPrueba

Create table Cliente(
	CI int not null,
	Nombre varchar (50) not null,
	Telefono  int,
	Primary Key (CI)
);

Create table CREDITO
(
	NRO int not null,
	Fecha date not null,
	Monto int not null,
	CiC int not null,
	Primary Key(NRO),
	Foreign Key(CIC) references Cliente(CI)
	On delete cascade	
	On update cascade 
);

Create table RECIBO
(
	NROR int not null,
	Fecha date not null,
	Monto int not null
	Primary Key(NROR)
);

Create table CUOTA
(	
	NROCRE int not null,
	NROC int not null,
	Fecha date not null,
	Monto int not null,
	NRORE int not null,
	Primary Key (NROCRE,NROC),
	Foreign Key (NRORE) references RECIBO(NROR)
	On delete cascade	
	On update cascade 
);

/*
	POBLAR LA TABLA PRRO
*/

select * from RECIBO

