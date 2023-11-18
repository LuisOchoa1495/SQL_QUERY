/*MANEJO DE VARIAS TABLAS*/
-- INNER JOIN 
select * from marca;
select * from pais;
-- inner
select marca.id,marca.nombre,pais.nombre from marca
inner join pais on marca.idPais= pais.id;
-- left
select * from marca
left join pais on marca.idPais= pais.id;
-- right
select * from marca
right join pais on marca.idPais= pais.id;

-- ejemplo
select * from almacen;
select almacen.id, marca.nombre, modelo.nombre,memoria.almacenamientoGB, almacen.cantidad 
from almacen 
inner join marca on almacen.idMarca=marca.id
inner join modelo on almacen.idModelo=modelo.id
inner join memoria on almacen.idMemoria=memoria.id;

-- UNION - crear almacen 2
/*tabla almacen2*/
create table almacen2(
id int not null primary key auto_increment,
idMarca int,
idModelo int,
idMemoria int,
cantidad int
);
alter table almacen2 add foreign key(idMarca) references marca(id);
alter table almacen2 add foreign key(idModelo) references modelo(id);
alter table almacen2 add foreign key(idMemoria) references memoria(id);

insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(1,1,2,20);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(2,2,1,40);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(4,3,3,55);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(1,4,3,65);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(2,5,2,29);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(8,6,2,12);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(7,7,2,74);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(5,8,2,84);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(2,9,3,5);
insert into almacen2(idMarca,idModelo,idMemoria,cantidad) values(2,10,2,22);

select * from almacen2;

(select * from almacen where cantidad>10) union (select * from almacen2 where cantidad>20);








