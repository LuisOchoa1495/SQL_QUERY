/*DDL*/
create database prueba;
use prueba;
create table persona(
id int not null auto_increment primary key,
nombres varchar(30),
apellidos varchar(50)
);
alter table persona add edad int;

truncate table persona;
drop table persona;
drop database prueba;

/*DML*/
-- seleccionar
select * from persona;
-- insertar
insert into persona(nombres,apellidos,edad) values('Mguel','Fernandez',23);
insert into persona(nombres,apellidos,edad) values('Javier','Hernandez',27);
insert into persona(nombres,apellidos,edad) values('Luis','Ochoa',28);
insert into persona(nombres,apellidos,edad) values('Cristian','Ochoa',26);

-- actualizar
update persona set edad=24 where dni=1;
-- eliminar
delete from persona where id=1;

/*TCL*/
commit;

start transaction;
update persona set edad=26 where dni=1;
rollback;
select * from persona;
