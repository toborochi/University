/*
	Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	UAGRM
	Autor: Anez Vladimirovna Leonardo Henry
	
	Topico: Recursividad
*/

create database Genealogico;
use Genealogico;

create table PERSONA
(
	ID INTEGER NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	SEXO CHAR NOT NULL,
	IDPADRE INTEGER,
	IDMADRE INTEGER
);

ALTER TABLE PERSONA
ADD FOREIGN KEY (IDPADRE) REFERENCES PERSONA(ID)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION;
	
ALTER TABLE PERSONA
ADD FOREIGN KEY (IDMADRE) REFERENCES PERSONA(ID)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION;
	
--Insertamos datos en la Tabla
INSERT INTO PERSONA VALUES(1,'Joaquin Chumacero Chambi','M',null,null);
INSERT INTO PERSONA VALUES(2,'Patricia Cuellar','F',null,null);
INSERT INTO PERSONA VALUES(3,'Luis Chumacero Cuellar','M',1,2);
INSERT INTO PERSONA VALUES(4,'Albertina Yupanqui','F',null,null);
INSERT INTO PERSONA VALUES(5,'Joaquin Chumacero Yupanqui','M',3,4);
INSERT INTO PERSONA VALUES(6,'Fabiola Mendez','F',null,null);
INSERT INTO PERSONA VALUES(7,'Joaquin Jr. Chumacero Mendez','M',5,6);
INSERT INTO PERSONA VALUES(8,'Patricia Chumacero Mendez','F',5,6);
INSERT INTO PERSONA VALUES(9,'Carla Camacho','F',null,null);
INSERT INTO PERSONA VALUES(10,'Carlos Camacho Chumacero','M',5,9);


/*Consulta 1: Mostrar todos los hijos de Joaquin Chumacero Yupanqui*/ 
SELECT HIJOS.ID,HIJOS.NOMBRE,HIJOS.SEXO
FROM PERSONA PADRE ,PERSONA HIJOS
WHERE PADRE.ID = HIJOS.IDPADRE AND 
	  PADRE.NOMBRE = 'Joaquin Chumacero Yupanqui'

