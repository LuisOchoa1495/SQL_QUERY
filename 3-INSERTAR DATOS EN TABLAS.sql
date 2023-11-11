/*Insertar datos*/
use dbalmacen;
/*Insertar datos a la tabla pais*/
insert into pais(nombre) values('EEUU');
insert into pais(nombre) values('China');
insert into pais(nombre) values('Corea del sur');
insert into pais(nombre) values('India');
insert into pais(nombre) values('Japon');
insert into pais(nombre) values('Irán');
insert into pais(nombre) values('México');
insert into pais(nombre) values('Brasil');
select * from pais;

/*Insertar datos a la tabla marca*/
insert into marca(nombre,idPais) values('Apple',1);
insert into marca(nombre,idPais) values('Xiaomi',2);
insert into marca(nombre,idPais) values('Huawei',2);
insert into marca(nombre,idPais) values('Samsung',3);
insert into marca(nombre,idPais) values('Motorola',1);
insert into marca(nombre,idPais) values('Sony',5);
insert into marca(nombre,idPais) values('LG',3);
insert into marca(nombre,idPais) values('Google',1);
select * from marca;

/*Insertar datos a la tabla memoria*/
insert into memoria(almacenamientoGB) values(128);
insert into memoria(almacenamientoGB) values(256);
insert into memoria(almacenamientoGB) values(512);
select  * from memoria;

/*Insertar datos a la tabla modelo*/
insert into modelo(nombre,descripcion) values('Iphone 14','Nuevo');
insert into modelo(nombre,descripcion) values('Redmi note 11','Usado');
insert into modelo(nombre,descripcion) values('Samsung Galaxy S23','Nuevo');
insert into modelo(nombre,descripcion) values('Iphone 14 Pro MAX','Nuevo');
insert into modelo(nombre,descripcion) values('Poco X3','Usado');
insert into modelo(nombre,descripcion) values('Pixel 7','Nuevo');
insert into modelo(nombre,descripcion) values('LG K10','Reparado');
insert into modelo(nombre,descripcion) values('Moto G22','Usado');
insert into modelo(nombre,descripcion) values('Xiaomi Redmi Note 9s','Reparado');
insert into modelo(nombre,descripcion) values('Xiaomi Redmi Note 7','Malogrado');
select * from modelo;

/*Insertar datos a la tabla almacen*/
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(1,1,2,15);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(2,2,1,50);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(4,3,3,25);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(1,4,3,35);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(2,5,2,19);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(8,6,2,12);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(7,7,2,34);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(5,8,2,14);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(2,9,3,5);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(2,10,2,2);
select * from almacen;
