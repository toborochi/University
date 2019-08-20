
/*
	Base de Datos 2 (2/2019)

	Leonardo Anez Vladimirovna Leonardo

	Universidad Autonoma Gabriel Rene Moreno
	Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
*/

use Demo

-- 1. Listar todos los Proveedores
select * 
from prov

-- 2. Listar todos los Almacenes
select * 
from alma

-- 3. Listar todos los Productos
select * 
from prod

-- 4. Listar toda la informacion existente en la tabla sumi
select * 
from sumi

-- 5. Listar todos los productos de color amarillo
select * 
from prod 
where colo='AMARILLO'

-- 6. Listar el codigo del producto, nombre del producto y fecha de los productos suministrados por el PROV1

-- Usando la Reunion Natural (JOIN)
select prod.cprd,nomp,ftra
from prod, sumi, prov
where prod.cprd=sumi.cprd and prov.cprv=sumi.cprv and prov.nomb='PROV1'

-- Usando la clausula IN (sub consultas)
select prod.cprd,nomp,ftra
from prod, sumi
where prod.cprd=sumi.cprd and sumi.cprv in 
(
select cprv
from prov
where nomb = 'PROV1'
);

-- Usando la clausula EXISTS
select prod.cprd,nomp,ftra
from prod, sumi
where prod.cprd=sumi.cprd and exists
(
select cprv
from prov
where nomb = 'PROV1' and sumi.cprv=prov.cprv
);

-- Usando subconsulta y el operador COUNT()
select prod.cprd,nomp,ftra
from prod, sumi
where prod.cprd=sumi.cprd and 
(
select count(cprv)
from prov
where nomb = 'PROV1' and sumi.cprv=prov.cprv
)>0;


-- 7. Listar los proveedores que suministraron algun producto

-- Usando la clausula IN
select *
from prov
where cprv in (
select cprv
from sumi
);

-- Usando la clausula EXISTS
select *
from prov
where exists (
select cprv
from sumi
where prov.cprv=sumi.cprv
);

-- Usando COUNT()
select *
from prov
where (
select count(cprv) from sumi where prov.cprv=sumi.cprv)>0;

-- Usando JOIN
select prov.cprv,nomb,ciud
from prov,sumi
where prov.cprv=sumi.cprv 
GROUP BY prov.cprv, nomb, ciud

-- 8. Listar los proveedores que no suministraron producto

-- Usando la clausula IN
select *
from prov
where cprv not in (
select cprv
from sumi
);

-- Usando la clausula EXISTS
select *
from prov
where not exists (
select cprv
from sumi
where prov.cprv=sumi.cprv
);

-- Usando COUNT()
select *
from prov
where (
select count(cprv) from sumi where prov.cprv=sumi.cprv)=0;

-- Usando JOIN
-- Es posble hacer con JOIN?


-- 9. Listar los proveedores que suministraron productos de color rojo

-- Usando JOIN
select prov.cprv,nomb,ciud
from sumi,prov,prod
where sumi.cprd=prod.cprd and prod.colo='ROJO' and prov.cprv=sumi.cprv
group by prov.cprv,nomb,ciud

-- Usando EXISTS 
select *
from prov
where exists(
select *
from sumi
where exists(
select *
from prod
where colo='ROJO' and sumi.cprd=prod.cprd and prov.cprv=sumi.cprv)
);

-- Usando COUNT
select *
from prov
where (
select count(cprv)
from sumi
where (
select count(cprd)
from prod
where colo='ROJO' and sumi.cprd=prod.cprd and prov.cprv=sumi.cprv)>0
)>0;
