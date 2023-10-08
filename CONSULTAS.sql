/*CREAR BD*/
create database almacen;
show databases;
use almacen;

/*ELIMINAR BD*/
create database almacen2;
use almacen2;
drop database almacen2;

/*CREAR TABLA*/
use almacen;
create table equipo(
id int auto_increment primary key,
Nombre varchar(100),
Marca varchar(50),
Cantidad int
)