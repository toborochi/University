-- Crear la Base de Datos denominada "preventas"

create database preventas

-- Seleccionamos la Base de Datos "preventas"
use preventas

-- Ctear la tabla de Proveedores
create table prov
(
cprv integer not null primary key,	-- Codigo del Proveedor
nomb char(40) not null,				-- Nombre del Proveedor
ciud char(2) not null				-- Ciudad del Proveedor
);

-- Ctear la tabla de Almacenes
create table alma
(
calm integer not null primary key,	-- Codigo del Almacen
noma char(40) not null,				-- Nombre del Almacen
ciud char(2) not null				-- Ciudad del Almacen
);

-- Ctear la tabla de Productos
create table prod
(
cprd integer not null primary key,	-- Codigo Producto
nomp char(40) not null,				-- Nombre del Producto
colo char(15) not null				-- Color del Producto
);

-- Ctear la tabla de Suministro
create table sumi
(
cprv integer not null,				-- Codigo del Proveedor
calm integer not null,				-- Codigo del Almacen
cprd integer not null,				-- Codigo del Producto
ftra date not null,					-- Fecha del suministro
cant decimal(12,2) not null,		-- Cantidad suministrada del producto
prec decimal(12,2) not null,		-- Precio del Producto
impt decimal(12,2) not null,		-- Importe 
foreign key(cprv) references prov,
foreign key(calm) references alma,
foreign key(cprd) references prod
);

-- Crear la tabla de Pre-Ventas
create table pventas
( 
nvta integer not null,				-- Numero de pre venta
nomc char(40) not null,				-- nombre del cliente
calm integer not null,				-- codigo del almacen 
ftra date not null,					-- fecha de pre venta
itot decimal(12,2) not null,		-- Importe total de la pre venta
ides decimal(12,2) not null,		-- Importe descuento de la pre venta
primary key(nvta) ,
foreign key(calm) references alma
)
-- Crear la tabla de Detalle de la Pre-Ventas
create table dventas
(
nvta integer not null,					-- Numero de la pre venta
cprd integer not null,					-- codigo del producto
cant decimal(12,2) not null,			-- cantidad
prec decimal(12,2) not null,			-- precio
impt decimal(12,2) not null,			-- importe
primary key(nvta ,cprd) ,
foreign key(nvta) references pventas,
foreign key(cprd) references prod
)

-- Crear la tabla bitacora de transacciones del la Pre-Ventas

create table log_pventas
(
ntra integer identity (1,1),			-- Numero secuencial
nvta integer not null,					-- Numero de la pre venta
ftra datetime not null,					-- fecha y hora
usua char(15) not null,					-- usuario
tipo char(1) not null,					-- Tipo de operacion (I=insert, U=update,D=delete)
primary key(ntra),						
foreign key(nvta) references pventas
)

insert into prov values(1,'PROV1','CB')
insert into prov values(2,'PROV2','LP')
insert into prov values(3,'PROV3','SC')
insert into prov values(4,'PROV4','SC')

insert into alma values(1,'ALM1','CB')
insert into alma values(2,'ALM2','SC')
insert into alma values(3,'ALM3','LP')
insert into alma values(4,'ALM3','SC')

insert into prod values(1,'PRD1','ROJO')
insert into prod values(2,'PRD2','VERDE')
insert into prod values(3,'PRD3','CAFE')
insert into prod values(4,'PRD4','ROJO')
insert into prod values(5,'PRD5','AZUL')

insert into sumi values(1,2,3,'10/09/2013',80,2,160)
insert into sumi values(3,2,3,'05/03/2013',10,3,30)
insert into sumi values(2,2,3,'10/01/2013',4,2.5,10)
insert into sumi values(3,3,3,'10/03/2014',1,2,2)
insert into sumi values(3,1,2,'12/04/2014',25,2,50)
insert into sumi values(3,2,3,'05/02/2013',10,3,30)
insert into sumi values(1,2,1,'10/02/2013',10,3.5,35)
insert into sumi values(1,2,1,'02/02/2012',100,5,500)
insert into sumi values(1,2,2,'10/08/2010',40,3,120)
insert into sumi values(2,2,2,'01/01/2010',4,1.5,6)
insert into sumi values(3,2,4,'12/06/2014',15,3,45)
insert into sumi values(1,3,1,'01/01/2013',20,5,100)
insert into sumi values(4,4,1,'12/06/2014',10,5,50)
insert into sumi values(4,4,2,'12/06/2014',4,1.5,6)
insert into sumi values(3,1,3,'12/4/2013',40,2,80)
insert into sumi values(1,1,1,'01/01/2012',2,4,8)
insert into sumi values(1,2,2,'11/12/2011',40,3,120)
insert into sumi values(2,2,2,'11/02/2012',40,2,80)


CREATE FUNCTION PA_PPP(@cprd INT, @calm INT)
RETURNS DECIMAL(12,2)
AS
BEGIN
	DECLARE @suma_total DECIMAL(12,2)
	DECLARE @cant_total DECIMAL(12,2)
	DECLARE @cant DECIMAL(12,2)
	DECLARE @prec DECIMAL(12,2)
	DECLARE @prec_final DECIMAL(12,2)
	SET @suma_total = 0
	SET @cant_total = 0
	
	DECLARE c_cursor CURSOR FOR SELECT sumi.cant, sumi.prec
		FROM sumi
		WHERE sumi.calm = @calm AND sumi.cprd = @cprd
	
	OPEN c_cursor
	FETCH c_cursor INTO @cant, @prec
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @suma_total = @suma_total + (@cant * @prec)
		SET @cant_total = @cant_total + @cant
		FETCH c_cursor INTO @cant, @prec
	END

	CLOSE c_cursor
	DEALLOCATE c_cursor
	
	SET @prec_final = @suma_total / @cant_total
	
	RETURN @prec_final
END


CREATE TRIGGER TR_upd_venta
ON dventas
FOR INSERT
AS 
BEGIN
	DECLARE @nvta int,@calm int, @cprd int;
	DECLARE @cant decimal(12,2),@impt decimal(12,2),@prec decimal(12,2);

	SELECT @nvta=nvta,@prec=prec,@cant=cant FROM inserted

	SET @calm = (SELECT calm FROM pventas WHERE nvta=@nvta)
	SET @prec = dbo.PA_PPP(@cprd,@calm)
	SET @prec = @prec * 1.10
	SET @impt = @prec * @cant

	UPDATE dventas SET prec =@prec,impt = @impt WHERE nvta =@nvta and cprd=@cprd

END;


CREATE TRIGGER TR_x
ON dventas
FOR UPDATE
as
BEGIN
	declare @impt_prod decimal(12,2)
	declare @impt_iva decimal(12,2)
	declare @impt_trans decimal(12,2)
	declare @impt_total decimal(12,2)

	set @impt_prod = (SELECT isnull(sum(impt),0) FROM dventas WHERE nvta = @nvta)
	set @impt_iva =  @impt_prod * 0.13
	set @impt_iva =  @impt_prod * 0.13



END;

