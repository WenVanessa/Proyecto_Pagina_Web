-- CREACIÓN BASE DE DATOS PROYECTO
create database proyecto_Lopez_Calderon;
use proyecto_Lopez_Calderon;

-- CREACIÓN DE LA TABLA PRODUCTO
CREATE TABLE producto(
prod_codigo bigint primary key not null, 
prod_nombre varchar(50) not null,
prod_precioVenta varchar(50) not null,
prod_descripcion varchar(50) not null
);

-- Varchar=numeros y letras siempre entre comillas--
-- Bigint=numeros no tiene comillas--
 
-- CREACIÓN DE LA TABLA DETALLE_VENTA
CREATE TABLE Detalle_venta(
deve_codigo bigint primary key not null,
vent_codigo_fk bigint not null,
prod_codigo_fk bigint not null,
deve_subtotal varchar(50) not null,
deve_cantidaPorProducto varchar(50) not null
);

-- CREACION DE LA TABLA VENTA 
CREATE TABLE venta(
vent_codigo bigint primary key not null,
vent_fecha varchar(50) not null,
vent_cantidad varchar(50) not null, 
vent_total varchar(50) not null,
vend_codigo_fk bigint not null,
clie_codigo_fk bigint not null
);

-- CREACIÓN DE LA TABLA CLIENTE
CREATE TABLE cliente(
clie_codigo bigint primary key not null,
clie_identificacion varchar(50) not null,
clie_tipoIdentificacion varchar(50) not null,
clie_nombre varchar(50) not null,
clie_telefono varchar(50) not null,
clie_direccion varchar(50) not null,
clie_telefono2 varchar(50) not null,
clie_correo varchar(50) not null,
usua_codigo_2fk bigint not null
);

-- CREACIÓN DE LA TABLA ADMINISTRACIÓN
CREATE TABLE administracion(
admi_codigo bigint primary key not null,
admi_identificacion varchar(50) not null,
admi_tipoIdentificacion varchar(50) not null,
admi_nombre varchar(50) not null,
admi_apellido varchar(50) not null, 
admi_celular varchar(50) not null, 
admi_direccion varchar(50) not null, 
usua_codigo_fk bigint not null
);

-- CREACION DE LA TABLA USUARIO
CREATE TABLE usuario(
codigo bigint primary key not null,
nombre varchar(50) not null,
clave varchar(50) not null, 
tipoUsuario varchar(50) not null
);

-- Las relaciones sirven para unir dos tablas--

Alter table detalle_venta add constraint prod_codigo_fk foreign key (prod_codigo_fk) references producto(prod_codigo);
Alter table Detalle_venta add constraint vent_codigo_fk foreign key (vent_codigo_fk) references venta (vent_codigo);
Alter table venta add constraint clie_codigo_fk foreign key (clie_codigo_fk) references cliente (clie_codigo);
Alter table cliente add constraint usua_codigo_2fk foreign key (usua_codigo_2fk) references usuario (usua_codigo);
Alter table administracion add constraint usua_codigo_fk foreign key (usua_codigo_fk) references cliente (clie_codigo);
ALter table venta  add constraint vend_codigo_fk foreign key (vend_codigo_fk) references administracion (admi_codigo);



-- Inserciones añadir registros a una tabla--

-- Insercciones usuario 
insert INTO usuario (codigo,nombre,clave,tipoUsuario) values (321,"LuisCa22","MilloS24","administrador");
insert INTO usuario (codigo,nombre,clave,tipoUsuario) values (237,"Mariaal30a","Gatolulo098","cliente");
insert INTO usuario (codigo,nombre,clave,tipoUsuario) values (108,"M4rco77","1141marco","administrador");
insert INTO usuario (codigo,nombre,clave,tipoUsuario) values (621,"Valelin2","12345lol","cliente");
insert INTO usuario (codigo,nombre,clave,tipoUsuario) values (110,"kirar900","2946mom","cliente");

select * from usuario;

-- Inserciones producto 
insert INTO producto (prod_codigo,prod_nombre,prod_precioVenta,prod_descripcion) 
values (24,"extracto te verde","25.000","buen estado");
insert INTO producto (prod_codigo,prod_nombre,prod_precioVenta,prod_descripcion) 
values (18,"vitamina e","30.000","estado nomal");
insert INTO producto (prod_codigo,prod_nombre,prod_precioVenta,prod_descripcion) 
values (14,"aceite de naranja","75.000","estado regular");
insert INTO producto (prod_codigo,prod_nombre,prod_precioVenta,prod_descripcion) 
values (68,"acido folico","35.000","excelente estado");
insert INTO producto (prod_codigo,prod_nombre,prod_precioVenta,prod_descripcion) 
values (54,"te valeriana","14.000","buen estado");

select * from producto;


-- Inserciones cliente 
insert INTO cliente (clie_codigo,clie_identificacion,clie_tipoIdentificacion,clie_nombre,clie_telefono,clie_direccion,clie_telefono2,clie_correo,usua_codigo_2fk) 
values (280,"10184950","CC","Camila","3224568930","cra 145a #117 20","3156789451","camilaalv3@gmail.com",321);
insert INTO cliente (clie_codigo,clie_identificacion,clie_tipoIdentificacion,clie_nombre,clie_telefono,clie_direccion,clie_telefono2,clie_correo,usua_codigo_2fk) 
values (230,"54387456","CC","Miguel","3114567429","calle 138 bis #125 89","3137894535","mijotaguel22@gmail.com",237);
insert INTO cliente (clie_codigo,clie_identificacion,clie_tipoIdentificacion,clie_nombre,clie_telefono,clie_direccion,clie_telefono2,clie_correo,usua_codigo_2fk) 
values (430,"11451184","CC","Diego","32278903987","cra 123c #223 13","3124568534","diegagu19@hotmail.com",321);
insert INTO cliente (clie_codigo,clie_identificacion,clie_tipoIdentificacion,clie_nombre,clie_telefono,clie_direccion,clie_telefono2,clie_correo,usua_codigo_2fk) 
values (670,"10084230","CC","Valeria","3105734567","cra 20b #123 22","3217895436","valelinda33@gmail.com",621);
insert INTO cliente (clie_codigo,clie_identificacion,clie_tipoIdentificacion,clie_nombre,clie_telefono,clie_direccion,clie_telefono2,clie_correo,usua_codigo_2fk) 
values (240,"64351008","CC","Fredy","3184569834","calle 134 bis #145 11","3176543825","docenfred22@hotmail.com",110);

select * from cliente;
-- Inserciones administración
insert INTO administracion (admi_codigo,admi_identificacion,admi_tipoidentificacion,admi_nombre,admi_apellido,admi_celular,admi_direccion,usua_codigo_fk) 
values (387,"24228075","CC","Sofia","Martinez","3144731076","calle 40c #167-09",280);
insert INTO administracion (admi_codigo,admi_identificacion,admi_tipoidentificacion,admi_nombre,admi_apellido,admi_celular,admi_direccion,usua_codigo_fk) 
values (95,"5046645","CC","Kevin","Lopez","3144746411","cra6 18-12",280);
insert INTO administracion (admi_codigo,admi_identificacion,admi_tipoidentificacion,admi_nombre,admi_apellido,admi_celular,admi_direccion,usua_codigo_fk) 
values (41,"1019026158","CC","Marcela","Valencia","3102856570","calle 145a #56-80",280);
insert INTO administracion (admi_codigo,admi_identificacion,admi_tipoidentificacion,admi_nombre,admi_apellido,admi_celular,admi_direccion,usua_codigo_fk) 
values (501,"1026054701","CC","Ivan","Ruiz","3155801249","cra40 80-09",280);
insert INTO administracion (admi_codigo,admi_identificacion,admi_tipoidentificacion,admi_nombre,admi_apellido,admi_celular,admi_direccion,usua_codigo_fk) 
values (28,"6537098","CC","Homero","Casas","3184421944","calle 147b #08-165",280);

select * from administracion;

-- Inserciones venta
insert INTO venta (vent_codigo,vent_fecha,vent_cantidad,vent_total,vend_codigo_fk,clie_codigo_fk) values (34,"20/05/2020","5","50.000",28,240);
insert INTO venta (vent_codigo,vent_fecha,vent_cantidad,vent_total,vend_codigo_fk,clie_codigo_fk) values (56,"16/04/2021","13","270.000",28,240);
insert INTO venta (vent_codigo,vent_fecha,vent_cantidad,vent_total,vend_codigo_fk,clie_codigo_fk) values (42,"08/01/2015","3","65.000",28,240);
insert INTO venta (vent_codigo,vent_fecha,vent_cantidad,vent_total,vend_codigo_fk,clie_codigo_fk) values (24,"12/10/2019","15","145.000",28,240);
insert INTO venta (vent_codigo,vent_fecha,vent_cantidad,vent_total,vend_codigo_fk,clie_codigo_fk) values (78,"13/04/2018","32","530.000",28,240);

select * from venta;

-- Inserciones detalle_venta
insert INTO detalle_venta (deve_codigo,vent_codigo_fk,prod_codigo_fk,deve_subtotal,deve_cantidaPorProducto) values (546,78,24,"12000","5");
insert INTO detalle_venta (deve_codigo,vent_codigo_fk,prod_codigo_fk,deve_subtotal,deve_cantidaPorProducto) values (230,78,24,"20000","7");
insert INTO detalle_venta (deve_codigo,vent_codigo_fk,prod_codigo_fk,deve_subtotal,deve_cantidaPorProducto) values (450,78,24,"10000","2");
insert INTO detalle_venta (deve_codigo,vent_codigo_fk,prod_codigo_fk,deve_subtotal,deve_cantidaPorProducto) values (120,78,24,"17900","4");
insert INTO detalle_venta (deve_codigo,vent_codigo_fk,prod_codigo_fk,deve_subtotal,deve_cantidaPorProducto) values (245,78,24,"60000","10");

select * from detalle_venta;

-- Se utiliza para buscar un patrón especificado en una columna LIKE--

-- LIKE--
select * from producto where prod_codigo like '%2%';
select * from detalle_venta where prod_codigo_fk like '%4%';

-- Identifica una columna seleccionada para utilizarla para agrupar resultados GROUP BY--

-- GROUP BY--
SELECT clie_codigo
FROM cliente
GROUP BY clie_codigo;

-- Se usa para especificar los datos que quiere usar en una consulta --

SELECT vent_codigo
FROM venta
GROUP BY vent_codigo;

-- Calcula el número de registros devueltos por una consulta--

-- COUNT--
 SELECT COUNT(*) FROM administracion;
 SELECT COUNT(*) FROM usuario;
 
 -- Devuelve la suma de un conjunto de valores contenidos en un campo especificado en una consulta--
 
 -- SUM--
 SELECT SUM(admi_identificacion) FROM administracion;
 SELECT SUM(usua_nombre) FROM usuario;
 
 -- Elimina uno o más registros de una tabla--
 
 -- DELETE--
 DELETE FROM venta
WHERE vent_cantidad>13 and vent_cantidad<5;
 DELETE FROM cliente
WHERE clie_nombre>miguel and clie_nombre<diego;

-- Cambia los datos de uno o más registros en una tabla
-- No se pueden ejcutar por que tienen una foranea que une con otras tablas lo cual no perimite elimina ni alctualizar--

-- UPDATE--
update producto
set prod_nombre="Aromatica frutos rojos" where prod_nombre="extracto te verde";
update producto
set prod_precioVenta="35.000" where prod_precioVenta="25.000";
 
update Detalle_venta
set deve_subtotal="15000" where deve_subtotal="12000";
update producto
set deve_cantidaPorProducto="7" where prod_precioVenta="5";
 
update venta
set vent_fecha="20/12/2022" where vent_fecha="20/05/2020";
update producto
set vent_cantidad="7" where prod_precioVenta="5";
 
update cliente
set clie_identificacion="166542389" where vent_fecha="24228075";
update producto
set clie_tipoIdentificacion="TI" where clie_tipoIdentificacion="CC";
 
update administracion
set admi_identificacion="166542389" where admi_fecha="24228075";
update producto
set admi_tipoIdentificacion="TI" where admi_tipoIdentificacion="CC";
 
update usuario
set usua_nombre="Santi09" where usua_nombre="LuisCa22";
update producto
set usua_clave="Nacho76" where usua_clave="MilloS24";

-- PROCEDIMIENTO ALMACENADO USUARIO--
DELIMITER $$ 
create procedure consultar_usuario(
in _usua_codigo bigint 
) 
BEGIN
select*from usuario where usua_codigo = _usua_codigo; 
end$$ 
DELIMITER ;
CALL consultar_usuario (237);

-- REGISTRAR USUARIO -- 
DELIMITER $$
create procedure registrar_usuario(
in _usua_codigo bigint,
in _usua_nombre varchar(50), 
in _usua_clave varchar(50)
)
BEGIN
Insert into usuario (usua_codigo, usua_nombre, usua_clave) 
values (_usua_codigo, _usua_nombre, _usua_clave);
end$$
DELIMITER ;
call registrar_usuario (8096666,"valerio23","patsy98");

-- drop procedure registrar_usuario;

-- Actualizar usuario 
DELIMITER $$
Create procedure actualizar_usuario(
in _usua_codigo bigint,
in _usua_nombre varchar(50), 
in _usua_clave varchar(50)
)
BEGIN 
update usuario set
usua_nombre = _usua_nombre,
usua_clave = _usua_clave
where usua_codigo = _usua_codigo;
END$$ 
DELIMITER ;

call actualizar_usuario (321, "drago2415", "michelltqm5");

-- Eliminar usuario 
DELIMITER $$ 
Create procedure eliminar_usuario(
in _usua_codigo bigint
) 
BEGIN 
delete from usuario where usua_codigo = _usua_codigo;
END$$
DELIMITER ;

call eliminar_usuario(322);

select * from usuario; 

-- PROCEDIMIENTO ALMACENADO PRODUCTO--
DELIMITER $$
create procedure consultar_producto(
in _prod_codigo bigint 
)
BEGIN 
select*from producto where prod_codigo = _prod_codigo;
end$$
DELIMITER ;
CALL consultar_producto (24);

-- REGISTRAR PRODUCTO-- 
DELIMITER $$
create procedure registrar_producto(
in _prod_codigo bigint, 
in _prod_nombre varchar(50),
in _prod_precioVenta varchar(50),
in _prod_unidadVenta varchar(50),
in _prod_unidadMedia varchar (50),
in _prod_stock varchar (50), 
in _prod_descripcion varchar (50)
)
BEGIN 
Insert into producto (prod_codigo, prod_nombre, prod_precioVenta, prod_unidadVenta, prod_unidadMedia, prod_stock, prod_descripcion)
values (_prod_codigo, _prod_nombre, _prod_precioVenta, _prod_unidadVenta, _prod_unidadMedia, _prod_stock, _prod_descripcion);
end$$
DELIMITER ; 
CALL registrar_producto (46689,"santiago","79.500","100","320","9","estado medio");

-- Actualizar producto 
DELIMITER $$
create procedure actualizar_producto(
in _prod_codigo bigint, 
in _prod_nombre varchar(50),
in _prod_precioVenta varchar(50),
in _prod_unidadVenta varchar(50),
in _prod_unidadMedia varchar (50),
in _prod_stock varchar (50), 
in _prod_descripcion varchar (50)
)
BEGIN 
update producto set 
prod_nombre = _prod_nombre,
prod_precioVenta = _prod_precioVenta,
prod_unidadVenta = _prod_unidadVenta,
prod_unidadMedia = _prod_unidadMedia,
prod_stock = _prod_stock,
prod_descripcion = _prod_descripcion
where prod_codigo = _prod_codigo;
END$$
DELIMITER ;

call actualizar_producto (24,"pauda","55.900","584","100","775","muy mal estado");

-- Eliminar producto 
DELIMITER $$ 
Create procedure eliminar_producto(
in _prod_codigo bigint 
) 
BEGIN 
delete from producto where prod_codigo = _prod_codigo; 
END$$
DELIMITER ;

call eliminar_producto(25);

select * from producto; 

-- PROCEDIMIENTO ALMACENADO VENTA--
DELIMITER $$
create procedure consultar_venta(
in _vent_codigo bigint
)
BEGIN
select*from venta where vent_codigo = _vent_codigo;
end$$
DELIMITER ;
CALL consultar_venta (78);

-- REGISTRAR VENTA--

DELIMITER $$
create procedure registrar_venta(
in _vent_codigo bigint, 
in _vent_fecha varchar(50),
in _vent_cantidad varchar(50),
in _vent_total varchar(50),
in _vend_codigo_fk bigint,
in _clie_codigo_fk bigint
)

BEGIN
insert INTO venta (vent_codigo, vent_fecha, vent_cantidad, vent_total, vend_codigo_fk, clie_codigo_fk)
values (_vent_codigo, _vent_fecha, _vent_cantidad, _vent_total, _vend_codigo_fk, _clie_codigo_fk);
 end$$
 DELIMITER ;
 call registrar_venta (111516, '10/07/2022', '21', '100.000', 28, 240);


 -- Actualizar venta
 DELIMITER $$
 create procedure actualizar_venta(
in _vent_codigo bigint, 
in _vent_fecha varchar(50),
in _vent_cantidad varchar(50),
in _vent_total varchar(50),
in _vend_codigo_fk bigint,
in _clie_codigo_fk bigint
)
BEGIN 
update venta set
vent_fecha = _vent_fecha,
vent_cantidad = _vent_cantidad,
vent_total = _vent_total,
vend_codigo_fk = _vend_codigo_fk,
clie_codigo_fk = _clie_codigo_fk
where vent_codigo = _vent_codigo;
End$$
DELIMITER ;

call actualizar_venta (56,"25/09/2014","21","200.000",28,240);

-- Eliminar venta 
DELIMITER $$
Create procedure eliminar_venta(
in _vent_codigo bigint
) 
BEGIN 
delete from venta where vent_codigo = _vent_codigo;
END$$
DELIMITER ;

call eliminar_venta(35);

select * from venta; 

 
-- PROCEDIMIENTO ALMACENADO CLIENTE--
DELIMITER $$
create procedure consultar_cliente(
in _clie_codigo bigint
)
BEGIN 
select*from cliente where clie_codigo = _clie_codigo;
end$$
DELIMITER ;
CALL consultar_cliente (280);

-- drop procedure consultar_cliente;

-- REGISTRAR CLIENTE--
DELIMITER $$
create procedure registrar_cliente(
in _clie_codigo bigint,
in _clie_identificacion varchar(50),
in _clie_tipoIdentificacion varchar(50),
in _clie_nombre varchar(50),
in _clie_telefono varchar(50),
in _clie_direccion varchar(50),
in _clie_telefono2 varchar(50),
in _clie_correo varchar(50),
in _usua_codigo_2fk bigint
)
BEGIN 
insert into cliente (clie_codigo, clie_identificacion, clie_tipoIdentificacion, clie_nombre, clie_telefono, clie_direccion, clie_telefono2, clie_correo, usua_codigo_2fk)
values (_clie_codigo, _clie_identificacion, _clie_tipoIdentificacion, _clie_nombre, _clie_telefono, _clie_direccion, _clie_telefono2, _clie_correo, _usua_codigo_2fk);
end$$
DELIMITER ;
CALL registrar_cliente (509,'10722055429','exp','Luisillo','3108643876','Cra50 #128-08','735289308','Pauliñalamasbonita777@yahoo.com',321);

-- drop procedure registrar_cliente;--

-- Actualizar cliente
Delimiter $$
create procedure actualizar_cliente(
in _clie_codigo bigint,
in _clie_identificacion varchar(50),
in _clie_tipoIdentificacion varchar(50),
in _clie_nombre varchar(50),
in _clie_telefono varchar(50),
in _clie_direccion varchar(50),
in _clie_telefono2 varchar(50),
in _clie_correo varchar(50),
in _usua_codigo_2fk bigint
)
BEGIN 
update cliente set 
clie_identificacion = _clie_identificacion,
clie_tipoIdentificacion = _clie_tipoIdentificacion,
clie_nombre = _clie_nombre, 
clie_telefono = _clie_telefono,
clie_direccion = _clie_direccion, 
clie_telefono2 = _clie_telefono2,
clie_correo = _clie_correo, 
usua_codigo_2fk = _usua_codigo_2fk
where clie_codigo = _clie_codigo; 
End$$
DELIMITER ;

call actualizar_cliente (387,"1019087225","ext","Wedi","3226517432","cra45 #65-09","wvlopez76@gmail.com","3146518774",321);

-- Eliminar cliente 
DELIMITER $$ 
Create procedure eliminar_cliente(
in _clie_codigo bigint
) 
BEGIN 
delete from cliente where clie_codigo = _clie_codigo;
END$$
DELIMITER ;

call eliminar_cliente(281);

select * from cliente; 

-- PROCEDIMIENTO ALMACENADO DETALLE_VENTA--
DELIMITER $$
create procedure consultar_detalle_venta(
in _deve_codigo bigint
)
BEGIN 
select*from detalle_venta where deve_codigo = _deve_codigo;
end$$
DELIMITER ;
CALL consultar_detalle_venta (120); 

-- REGISTRAR DETALLE_VENTA--

DELIMITER $$
create procedure registrar_detalle_venta(
in _deve_codigo bigint,
in _vent_codigo_fk bigint,
in _prod_codigo_fk bigint,
in _deve_subtotal varchar(50),
in _deve_cantidaPorProducto varchar(50)
)
BEGIN
insert into detalle_venta (deve_codigo, vent_codigo_fk, prod_codigo_fk, deve_subtotal, deve_cantidaPorProducto)
values (_deve_codigo, _vent_codigo_fk, _prod_codigo_fk, _deve_subtotal, _deve_cantidaPorProducto);
end $$
DELIMITER ;
CALL registrar_detalle_venta (618,34,24,"20900","12");

-- Actualizar detalle_venta
DELIMITER $$
create procedure actualizar_detalle_venta(
in _deve_codigo bigint,
in _vent_codigo_fk bigint,
in _prod_codigo_fk bigint,
in _deve_subtotal varchar(50),
in _deve_cantidaPorProducto varchar(50)
)
BEGIN 
update detalle_venta set
vent_codigo_fk = _vent_codigo_fk,
prod_codigo_fk = _prod_codigo_fk,
deve_subtotal = _deve_subtotal,
deve_cantidaPorProducto = deve_cantidaPorProducto
where deve_codigo = _deve_codigo;
End$$
DELIMITER ;

call actualizar_detalle_venta (230,78,24,"70000","234");

-- Eliminar Detalle_venta
DELIMITER $$
Create procedure eliminar_Detalle_venta(
in _deve_codigo bigint
) 
BEGIN 
delete from Detalle_venta where deve_codigo = _deve_codigo;
END$$
DELIMITER ;

call eliminar_Detalle_venta(547);

select * from detalle_venta; 

-- PROCEDIMIENTO AMACENADO ADMINISTRACION--
DELIMITER $$
create procedure consultar_administracion(
in _admi_codigo bigint 
)
BEGIN
select*from administracion where admi_codigo = _admi_codigo;
end$$
DELIMITER ;
CALL consultar_administracion (387);

-- REGISTRAR ADMINISTRACION--
DELIMITER $$
create procedure registrar_administracion(
in _admi_codigo bigint, 
in _admi_identificacion varchar(50), 
in _admi_tipoIdentificacion varchar(50),
in _admi_nombre varchar(50),
in _admi_apellido varchar(50),
in _admi_celular varchar(50), 
in _admi_direccion varchar(50),
in _usua_codigo_fk bigint(50)
)
BEGIN 
insert into administracion (admi_codigo, admi_identificacion, admi_tipoIdentificacion, admi_nombre, admi_apellido, admi_celular, admi_direccion, usua_codigo_fk) 
values (_admi_codigo, _admi_identificacion, _admi_tipoIdentificacion, _admi_nombre, _admi_apellido, _admi_celular, _admi_direccion, _usua_codigo_fk);
end $$ 
DELIMITER ;
CALL registrar_administracion (671,'1096532871','exp','Tim','Orozco','3147625434','Cll148 #87-11',280);
-- drop procedure registrar_administracion;
 
-- Actualizar administracion 
DELIMITER $$
create procedure actualizar_administracion( 
in _admi_codigo bigint, 
in _admi_identificacion varchar(50), 
in _admi_tipoIdentificacion varchar(50),
in _admi_nombre varchar(50),
in _admi_apellido varchar(50),
in _admi_celular varchar(50), 
in _admi_direccion varchar(50),
in _usua_codigo_fk bigint(50)
)
BEGIN 
update administracion set 
admi_identificacion = _admi_identificacion,
admi_tipoIdentificacion = _admi_tipoIdentificacion,
admi_nombre = _admi_nombre,
admi_apellido = _admi_apellido,
admi_celular = _admi_celular,
admi_direccion = _admi_direccion, 
usua_codigo_fk = _usua_codigo_fk 
where admi_codigo = _admi_codigo;
END$$
DELIMITER ;

call actualizar_administracion(34,"10987634172","ext","Valerio","Torres","3118901312","calle133 #49-90",240);
-- drop procedure actualizar_administracion; --

-- Eliminar administacion
DELIMITER $$
Create procedure eliminar_administracion(
in _admi_codigo bigint
) 
BEGIN 
delete from administracion where admi_codigo = _admi_codigo;
END$$
DELIMITER ;

call eliminar_administracion(388);

select * from administracion; 

-- MULTITABLAS--
-- Son conultas que traen atributos de dos o mas tablas--

select * FROM detalle_venta as D inner join producto as P ON D.deve_codigo > P.prod_codigo;
 select * FROM detalle_venta as D left join producto as P ON D.deve_codigo > P.prod_codigo;
 select * FROM detalle_venta as D right join producto as P ON D.deve_codigo > P.prod_codigo;
 
 select vent_codigo_fk, prod_codigo_fk, prod_nombre, prod_precioVenta from detalle_venta as D inner join producto as P ON D.prod_codigo_fk = P.prod_codigo;
 select vent_codigo_fk, prod_codigo_fk, prod_nombre, prod_precioVenta from detalle_venta as D left join producto as P ON D.prod_codigo_fk = P.prod_codigo;
select vent_codigo_fk, prod_codigo_fk, prod_nombre, prod_precioVenta from detalle_venta as D right join producto as P ON D.prod_codigo_fk = P.prod_codigo;

select vent_codigo_fk, prod_codigo_fk, vent_codigo, vent_fecha from detalle_venta as Q inner join venta as W ON Q.vent_codigo_fk = W.vent_codigo;
select vent_codigo_fk, prod_codigo_fk, vent_codigo, vent_fecha from detalle_venta as Q left join venta as W ON Q.vent_codigo_fk = W.vent_codigo;
select vent_codigo_fk, prod_codigo_fk, vent_codigo, vent_fecha from detalle_venta as Q right join venta as W ON Q.vent_codigo_fk = W.vent_codigo;

select vent_codigo, vent_fecha, clie_identificacion, usua_codigo_2fk from venta as V inner join cliente as C ON V.vent_codigo = C.usua_codigo_2fk;
select vent_codigo, vent_fecha, clie_identificacion, usua_codigo_2fk from venta as V left join cliente as C ON V.vent_codigo = C.usua_codigo_2fk;
select vent_codigo, vent_fecha, clie_identificacion, usua_codigo_2fk from venta as V right join cliente as C ON V.vent_codigo = C.usua_codigo_2fk;

select clie_codigo, clie_identificacion, usua_codigo, usua_nombre from cliente as E inner join usuario as R ON E.usua_codigo_2fk = R.usua_codigo;
select clie_codigo, clie_identificacion, usua_codigo, usua_nombre from cliente as E left join usuario as R ON E.usua_codigo_2fk = R.usua_codigo;
select clie_codigo, clie_identificacion, usua_codigo, usua_nombre from cliente as E right join usuario as R ON E.usua_codigo_2fk = R.usua_codigo;

select admi_codigo, admi_identificacion, clie_identificacion, usua_codigo_2fk from administracion as A inner join cliente as C ON A.admi_codigo = C.usua_codigo_2fk;
select admi_codigo, admi_identificacion, clie_identificacion, usua_codigo_2fk from administracion as A left join cliente as C ON A.admi_codigo = C.usua_codigo_2fk;
select admi_codigo, admi_identificacion, clie_identificacion, usua_codigo_2fk from administracion as A right join cliente as C ON A.admi_codigo = C.usua_codigo_2fk;

select vent_codigo, vent_fecha, admi_codigo, admi_identificacion from venta as T inner join administracion as Y ON T.vend_codigo_fk = Y.admi_codigo;
select vent_codigo, vent_fecha, admi_codigo, admi_identificacion from venta as T left join administracion as Y ON T.vend_codigo_fk = Y.admi_codigo;
select vent_codigo, vent_fecha, admi_codigo, admi_identificacion from venta as T right join administracion as Y ON T.vend_codigo_fk = Y.admi_codigo;usuario