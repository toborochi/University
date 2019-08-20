/*
	Base de Datos 2 (2/2019)
	TP4-T0 (Practica de Programacion de Consultas SQL - Parte II)
	
	Leonardo Anez Vladimirovna Leonardo

	Universidad Autonoma Gabriel Rene Moreno
	Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
*/

use Demo

-- REUNION NATURAL
-- 1. Listar los productos suministrados hasta la fecha, 
-- se debe mostrar: Código Producto, Nombre del Producto y 
-- Cantidad. La lista debe estar ordenado por el Nombre del Producto.

select prod.cprd,prod.nomp,sumi.cant
from prod,sumi
where prod.cprd=sumi.cprd and ftra<=GETDATE()
order by prod.nomp

-- 2. Listar los productos suministrados a la ciudad de Santa Cruz, 
-- Cochabamba y Beni se debe mostrar: Código Producto, Nombre del Producto, 
-- Cantidad, Fecha, Precio, Nombre del Almacén. La lista debe estar ordenado por 
-- el Nombre del Almacen seguido por Nombre del Producto.

select prod.cprd,prod.nomp,sumi.cant,sumi.ftra,sumi.prec,alma.noma
from prod,sumi,alma
where alma.ciud in('SC','BE','CB') and sumi.cprd=prod.cprd and sumi.calm=alma.calm
order by alma.noma,prod.nomp

-- 3. Listar los productos suministrados por los proveedores de la ciudad de La Paz a la 
-- ciudad de Santa Cruz, se debe mostrar: Código Producto, Nombre del Producto, Cantidad, Precio,
--  Fecha, Nombre del Almacén, Nombre del Proveedor. La lista debe estar ordenado por el Nombre del 
-- Proveedor, Nombre del Almacen y Nombre del Producto.

select prod.cprd,prod.nomp,sumi.cant,sumi.prec,sumi.ftra,alma.noma,prov.nomb
from prod,sumi,alma,prov
where prov.ciud='LP' and alma.ciud='SC' and sumi.calm=alma.calm and sumi.cprv=prov.cprv
order by prov.nomb,alma.noma,prod.nomp

-- 4. Listar los productos suministrados por el proveedor  PRV2 cuyos importes superen a 10 Bs, se debe mostrar:
-- Código del Producto, Nombre del Producto, Fecha, Cantidad, Precio, Importe e Importe de Descuento. El Importe de 
-- Descuento equivale al 10% del Importe por cada producto. La lista debe estar ordenado por el Nombre del Proveedor,
-- Nombre del Almacen y Nombre del Producto.

select prod.cprd,prod.nomp,sumi.ftra,sumi.cant,sumi.prec,sumi.impt, (sumi.impt*0.1) as impd
from prod,sumi,prov,alma
where sumi.cprv=prov.cprv and prov.nomb='PROV2' and sumi.cprd=prod.cprd and (impt) > 10
order by prov.nomb,alma.noma,prod.nomp

-- USO DE LA CLAUSULA IN / EXISTS

-- 1. Listar los Productos Existentes en los almacenes de la ciudad de Santa Cruz

select *
from prod
where cprd in (
	select cprd
	from sumi,alma
	where alma.ciud='SC' and sumi.calm=alma.calm
)

select *
from prod
where exists (
	select cprd
	from sumi,alma
	where alma.ciud='SC' and sumi.calm=alma.calm and prod.cprd=sumi.cprd
)

-- 2. Listar los Proveedores que Suministraron algún Producto
-- 3. Listar los Proveedores que todavía no suministraron productos.
-- 4. Listar los Productos Suministrados por el Proveedor PRV3

select *
from prod
where cprd in (
	select cprd 
	from sumi
	where cprv in(
		select cprv
		from prov
		where nomb='PROV3'
	)
);

select *
from prod
where exists (
	select cprd 
	from sumi
	where sumi.cprd=prod.cprd and exists(
		select cprv
		from prov
		where nomb='PROV3' and sumi.cprv=prov.cprv
	)
);

-- 5. Listar los nombres de los proveedores que suministraron algún producto color rojo

select *
from prov
where cprv in(
	select cprv
	from sumi
	where cprd in (
		select cprd
		from prod
		where colo='ROJO'
	)
);

-- 6. Listar los Productos existente en el Almacén 1,que fueron suministrado por el Proveedor PRV1

select *
from prod
where cprd in (
	select cprd
	from sumi
	where calm in(
		select calm
		from alma
		where noma='ALM1'
	) and cprv in(
		select cprv
		from prov
		where nomb='PROV1'
	)
);

select *
from prod
where exists (
	select cprd
	from sumi
	where sumi.cprd=prod.cprd and exists(
		select calm
		from alma
		where noma='ALM1' and alma.calm=sumi.calm
	) and exists(
		select cprv
		from prov
		where nomb='PROV1' and prov.cprv=sumi.cprv
	)
);

-- 7. Listar los Productos de color Amarillo suministrados por el Proveedor PRV2

select *
from prod
where cprd in(
	select cprd
	from sumi
	where cprv in(
		select cprv
		from prov
		where nomb='PROV2'
	)

) and colo='AMARILLO';

-- 8. Listar los nombres de proveedores que suministraron todos los productos.
-- 9. Listar los nombres de los proveedores que suministraron algún producto fuera de su ciudad.

select *
from prov
where cprv in(
	select cprv
	from sumi
	where calm in(
		select calm
		from alma
		where alma.ciud<>prov.ciud 
	)
);


select *
from prov
where exists(
	select cprv
	from sumi
	where prov.cprv=sumi.cprv and exists(
		select calm
		from alma
		where alma.ciud<>prov.ciud and alma.calm=sumi.calm
	)
);


-- 10. Listar los nombres de los proveedores que suministraron producto en todos los almacenes de la ciudad de Santa Cruz.

select *
from prov
where cprv in(
	select cprv
	from sumi 
	where calm in(
		select calm
		from alma
		where ciud='SC'
	)
);

select *
from prov
where exists(
	select cprv
	from sumi 
	where sumi.cprv=prov.cprv and exists(
		select calm
		from alma
		where alma.calm=sumi.calm and ciud='SC'
	)
);

-- USO DE FUNCIONES AGREGADAS SUM, AVG, COUNT, MAX y MIN

-- 1. Mostrar el Stock existente del producto PRD1 en la ciudad de Santa Cruz.
-- 2. Mostrar el Inventario Valorado del producto PRD2.
-- 3. Mostrar la cantidad más alta suministrada del producto PRD1 en la ciudad de La Paz.

select max(cant)
from sumi,alma,prod
where sumi.calm=alma.calm and sumi.cprd=prod.cprd and alma.ciud='LP'

-- 4. Mostrar la última fecha que se suministró el producto PRD1 por el proveedor PRV3.

select max(ftra)
from sumi,prod,prov
where sumi.cprd=prod.cprd and sumi.cprv=prov.cprv and prod.nomp='PRD1' and prov.nomb='PROV3'


-- 5. Mostrar en qué fecha por primera vez suministró algún producto de color Rojo el proveedor PRV1.

select min(ftra)
from sumi,prod,prov
where sumi.cprd=prod.cprd and prod.colo='ROJO' and prov.cprv=sumi.cprv and prov.nomb='PROV1'

-- 6. Mostrar el importe promedio de productos suministrados por el proveedor PRV3.

select avg(impt)
from sumi,prov
where sumi.cprv=prov.cprv and prov.nomb='PROV3'

-- 7. Mostrar el Stock existente de cada producto existente en la ciudad de Santa Cruz.
-- 8. Mostrar el Inventario Valorado existente por cada almacén.

select calm,sum(impt)
from sumi
group by calm
order by calm

-- 9. Mostrar la cantidad más alta suministrada de cada producto en la ciudad de La Paz, siempre que la cantidad total de cada producto supere a 20.
-- 10. Mostrar la última fecha de cada producto suministrada por el proveedor PRV3.
-- 11. Mostrar por cada proveedor cual fue la fecha que por primera vez suministró algún producto.
-- 12. Mostrar el importe promedio en cada almacén y por cada producto suministrado.Debe enviar