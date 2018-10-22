CREATE DATABASE tablatarea
use tablatarea

create table carrera
(
 codigo varchar(10) not null primary key,
 nombre varchar(50),
 duracion integer
);
create table alumno
(
 registro integer not null primary key,
 nombre varchar(50) not null,
 sexo char not null,
 estadoC char not null,
 Telefono integer,
 codigoCa varchar(10), 
 foreign key (codigoCa) references carrera(codigo)
 on update cascade
 on delete cascade
);

insert into carrera(codigo,nombre,duracion) values ('187-3','Joaquin Chumacero',5);
insert into carrera(codigo,nombre,duracion) values ('187-4','Saturnino Mamani',5);


insert into alumno(registro,nombre,sexo,estadoC,Telefono,codigoCa) values (111,'Joaquin Chumacero','M','S',70840755,'187-3');
insert into alumno(registro,nombre,sexo,estadoC,Telefono,codigoCa) values (111,'Saturnino Mamani','M','S',70840755,'187-4');
insert into alumno(registro,nombre,sexo,estadoC,Telefono,codigoCa) values (111,'Fabiola Mendez','M','S',70840755,'187-6');

select * from carrera

select registro,alumno.nombre
from alumno,carrera
where codigoCa=codigo and carrera.nombre = 'Informatica' and Telefono is null
