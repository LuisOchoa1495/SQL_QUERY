/*OPERADORES*/
-- Logicos:and - or - not 
select * from modelo;
select * from modelo where descripcion ='Usado' and id=2;
select * from modelo where descripcion = 'Usado' or descripcion='Reparado';
select * from modelo where not descripcion = 'Usado';
-- Comparacion
select * from almacen;
select * from almacen where cantidad>20;
select * from almacen where cantidad between 15 and 30;

select * from marca;
select * from marca where nombre like '%o%';
select  * from marca where nombre like 'A%';
select * from marca where nombre like '%a';

select * from modelo where descripcion in('Malogrado','Reparado');
