/*VISTAS*/
-- crear vistas 
use dbalmacen;
select * from marca;
select * from pais;

-- vistas 
create view marca_pais as
select marca.id, marca.nombre, pais.nombre as pais from marca
inner join pais on marca.idPais= pais.id;

select * from marca_pais;

-- vistas 
select * from almacen;

create view almacen_detalle as
select almacen.id, marca.nombre, modelo.nombre,memoria.almacenamientoGB, almacen.cantidad 
from almacen 
inner join marca on almacen.idMarca=marca.id
inner join modelo on almacen.idModelo=modelo.id
inner join memoria on almacen.idMemoria=memoria.id;

select * from almacen_detalle;