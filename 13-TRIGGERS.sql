/*
-- TRIGGERS:
Un trigger o disparador es una regla que se asocia a una tabla. Mediante esta regla, 
se ejecutan una serie de instrucciones cuando se producen ciertos eventos sobre una tabla.
-- eventos son: 
INSERT, UPDATE o DELETE
*/

-- crear un trigger

DELIMITER //
create trigger log_modelo after insert on modelo
for each row begin
	insert into acciones_registro(accion) 
    value (concat('Se ingreso un nuevo registro en modelo: ',NEW.nombre));
end//
delimiter ;

drop trigger log_modelo;