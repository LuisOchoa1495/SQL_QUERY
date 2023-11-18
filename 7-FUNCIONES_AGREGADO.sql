/*FUNCIONES DE AGREGADO*/
use dbalmacen;
-- AVG
select * from almacen;
select avg(cantidad) as promedio from almacen;
-- COUNT
select * from modelo;
select count(*) as Nuevos from modelo where descripcion ='Nuevo';
-- SUM
select sum(cantidad) as Cantidades from almacen where idMemoria=2;
-- MAX
select max(cantidad) as Maximo from almacen;
-- MIN 
select min(cantidad) as Minimo from almacen;