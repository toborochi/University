create database comercio;
use comercio;

Create table Cliente(
CI int not null,
Nombre varchar (50) not null,
Telefono  int,
Primary Key (CI)
);

Insert into Cliente values (111,'Joaquin Chumacero',3568090);
Insert into Cliente values (222,'Saturnino Mamani',7000111);
Insert into Cliente values (333,'Patricia Aguilera',3541177 );
Insert into Cliente values (444,'Carlos Camacho',null);

Create table NotaVenta(
Nro int not null,
Fecha date not null,
Monto float not null,
CiC int not null,
Primary key (Nro),
Foreign key(CiC) references Cliente(CI)
On delete cascade	
On update cascade 	
);
Insert into NotaVenta values (1, '10/01/2011',30,111);
Insert into NotaVenta values (2,'11/01/2011',35,333 );
Insert into NotaVenta values (3, '11/01/2011',100,333);
Insert into NotaVenta values (4,'12/01/2011',200,111 );
Insert into NotaVenta values (5,'15/01/2011',50,444 );

Create table Producto
(
 Codigo varchar(3) not null,
 nombre varchar(50) not null,
 Precio float not null,
 Primary key(codigo)
 	
);

Insert into Producto values ('P01', 'Cable de red cat 5',0.5);
Insert into Producto values ('P02', 'Mouse',10);
Insert into Producto values ('P03', 'Monitor',100);
Insert into Producto values ('P04', 'Teclado',15);

Create table vende(
Nron int not null,
CodigoP varchar(3) not null,
Cantidad int not null,
Precio float not null,
Primary key(Nron,CodigoP),
Foreign key(Nron) references NotaVenta (Nro)
On delete cascade on update cascade,
Foreign key(CodigoP) references Producto (Codigo)
On delete cascade on update cascade
);


insert into vende values (1,'p02',3,10);
insert into vende values (2,'p02',2,10);
insert into vende values (2,'p01',30,0.5);
insert into vende values (3,'p03',1,100);
insert into vende values (4,'p03',2,100);
insert into vende values (5,'p02',2,10);
insert into vende values (5,'p04',2,15);

/*
	PASO 1: Identificar tablas que participan
	PASO 2: Relacionar las tablas
	PASO 3: Criterio de Busqueda
	PASO 4: Atributos a Buscar
*/

-- Mostrar las notas de ventas de joaquin chumacero
SELECT Nro,Fecha,Monto
FROM  Cliente,NotaVenta
WHERE CI=CIC AND
      Nombre = 'Joaquin Chumacero';
-- Anidado
select Nro,Fecha,Monto
from NotaVenta
where cic in
(
select ci
from Cliente
where Nombre = 'Joaquin Chumacero'
);


-- Mostrar las notas de venteas de donde se haya vendido mouse


select nro,Fecha,Monto
from NotaVenta,vende,Producto
where Nro=Nron and
	  CodigoP = Codigo and
	  nombre = 'Mouse';

-- Mostrar la lista de productos comprados por patricia aguilera

select Codigo,Producto.nombre
from Cliente,NotaVenta,vende,Producto
where CI = CiC and
      Nro = Nron and
	  Codigo = CodigoP and
	  Cliente.Nombre = 'Patricia Aguilera';


select Codigo,nombre
from Producto
where codigo in
(
select CodigoP
from vende
where nron in (
				select nro
				from NotaVenta
				where CiC in (
						select CI
						from Cliente
						where Nombre = 'Patricia Aguilera')));
