/*Insertar datos*/
use dbalmacen;
/*Insertar datos a la tabla pais*/
insert into pais(nombre) values('EEUU');
insert into pais(nombre) values('China');
insert into pais(nombre) values('Corea del sur');
insert into pais(nombre) values('India');
insert into pais(nombre) values('Japon');
select * from pais;

/*Insertar datos a la tabla marca*/
insert into marca(nombre,idPais) values('Apple',1);
insert into marca(nombre,idPais) values('Xiaomi',2);
insert into marca(nombre,idPais) values('Huawei',2);
insert into marca(nombre,idPais) values('Samsung',3);
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
select * from modelo;

/*Insertar datos a la tabla almacen*/
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(1,1,2,15);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(2,2,1,50);
insert into almacen(idMarca,idModelo,idMemoria,cantidad) values(4,3,3,25);
select * from almacen;
