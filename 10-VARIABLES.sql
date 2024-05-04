use dbalmacen;
set @var1=15;
set @var2='Nuevo';

select @suma := sum(cantidad) as suma from almacen;
select @promedio := avg(cantidad) as promedio from almacen;

-- ejemplo1
select * from modelo where descripcion=@var2;

-- ejemplo 2
select * from almacen where cantidad<@var1;
select * from almacen where cantidad > @promedio;



select*from modelo;
select*from almacen;