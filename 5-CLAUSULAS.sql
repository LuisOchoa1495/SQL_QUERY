use dbalmacen;
-- FROM
select * from marca;
-- WHERE
select * from modelo where id=1;
select * from modelo where descripcion='Nuevo';
-- group by
select descripcion from modelo group by descripcion;
-- having
select * from almacen having cantidad > 20;
-- order by 
select * from almacen order by cantidad ASC;
select * from almacen order by cantidad DESC;