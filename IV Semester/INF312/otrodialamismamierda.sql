create database Academics;
use Academics



create table Semestre
(
	ID int not null,
	nombre varchar(50) not null,
	primary key (ID)
);

create table Persona
(
	CI int not null,
	nombre varchar(50),
	sexo char not null,
	añoIngreso date,
	profesion varchar(50) ,
	TE bit,
	TD bit,
	primary key (CI)
);


create table BoletaInscripcion
(
	NRO int not null,
	fecha date not null,
	CIA int not null,
	IDSemestre int not null
	primary key (NRO)
	Foreign Key(CIA) references Persona(CI)
	On delete cascade	
	On update cascade ,
	Foreign Key(IDSemestre) references Semestre(ID)
	On delete cascade	
	On update cascade
);



create table Materia
(
	SIGLA varchar(10) not null,
	nombre varchar(50) not null,
	credito int not null,
	primary key (SIGLA)
);

create table Grupo
(
	ID int not null,
	nombre varchar(50) not null,
	cupo int not null,
	primary key (ID),

	CID int not null,
	SiglaMat varchar(10) not null,
	IDSemestre int not null,
	Foreign Key(CID) references Persona(CI)
	On delete cascade	
	On update cascade,
	Foreign Key(SiglaMat) references Materia(SIGLA)
	On delete cascade	
	On update cascade,
	Foreign Key(IDSemestre) references Semestre(ID)
	On delete cascade	
	On update cascade

);


create table Inscribe
(
	NROBI int not null,
	IDGrupo int not null,
	Foreign Key(NROBI) references BoletaInscripcion(NRO)
	On delete cascade	
	On update cascade,
	Foreign Key(IDGrupo) references Grupo(ID)
	On delete no action	
	On update no action
);

insert into Persona values (111,'Joaquin Chumacero','M',null,'Jugador Futbol',1,0)
insert into Persona values (222,'Saturnino  Mamani','M','1981-08-24',null,0,1)
insert into Semestre values (1,'I-2018')
insert into Semestre values (2,'II-2018')
insert into Materia values ('INF110','Introduccion a la Informatica',5)
insert into Materia values ('MAT101','Calculo I',5)

insert into BoletaInscripcion values (100,'10-08-2018',222,2)
insert into Grupo VALUES (1,'SC',50,111,'INF110',2)
insert into Inscribe values (100,1)

-- Mostrar la cantidad de grupos programados por materia
select SIGLA,Materia.nombre,count(*)
from Grupo,Materia
where SiglaMat=SIGLA
group by SIGLA,Materia.nombre
having count(*)>1 

--  Mostrar la cantidad de materias inscritas por alumno, en el semstre I-2018

select Persona.CI,Persona.nombre,count(*)
from Persona,BoletaInscripcion,Inscribe,Semestre
where Persona.CI = BoletaInscripcion.CIA and
	  BoletaInscripcion.NRO = Inscribe.NROBI and
	  BoletaInscripcion.IDSemestre = Semestre.ID and
	  Semestre.nombre = 'I-2018' and
	  Persona.TE = 1 and Persona.TD = 0
group by Persona.CI,Persona.nombre


-- Mostrar una lista con ci y nombre de los docentes y las materias que ensenan
