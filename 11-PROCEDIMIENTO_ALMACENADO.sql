/* PROCDIMIENTO ALMACENADO O STORED PROCEDURE:
	PORCION DE CODIGO PARA GUARDAR-REUTILIZAR
*/
-- IN: PARAMETRO DE ENTRADA
-- OUT: PARAMETRO DE SALIDA 
-- INOUT: VALOR MODIFICADO.
-- DELIMITER: BLOQUE INDEPENDIENTE.
use dbalmacen;
drop procedure sp_almacen_descripcion;
-- descripcion lista
delimiter //
CREATE PROCEDURE sp_almacen_descripcion(in descripcion_estado varchar(255),out cantidad int(5))
begin
select count(nombre) into cantidad from modelo where descripcion=descripcion_estado;
-- select nombre,descripcion,modelo,count(*)into cantidad from modelo where descripcion= descripcion_estado;
end//
delimiter ;
-- cantidad de producto
call sp_almacen_descripcion('Malogrado',@cantidad) -- Nuevo, malogrado, reparado.
select @cantidad

-- sp_inner join 
SELECT modelo.nombre, almacen.cantidad FROM almacen inner join modelo on modelo.id=almacen.idModelo
where nombre='iphone 14';