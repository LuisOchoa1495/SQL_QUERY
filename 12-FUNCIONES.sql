/* 
FUNCIONES: Una función en MySQL es una rutina creada para tomar unos parámetros, procesarlos
 y retornar en un salida.
 
 FUNCIONES VS PROCEDIMIENTOS ALMACENADOS:
 funciones se pueden llamar desde cualquier procedimiento sql
 Mientras que los procedimientos se llaman solo una vez. (call)
-LOS PROCEDIMIENTOS PUEDEN RETORNAR VARIOS PARAMETROS
Y LAS FUNCIONES SOLO RETORNAN UNA VARIABLE.
*/

use dbalmacen;

delimiter //
create function modelo_nombre(letra char) returns int
begin
	declare numero int;
    select count(*) into numero from modelo 
    where nombre like 
    concat(letra,'%');
    return numero;
end//
delimiter ;

select modelo_nombre('R');




