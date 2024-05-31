/*
-- TRIGGERS:
Un trigger o disparador es una regla que se asocia a una tabla. Mediante esta regla, 
se ejecutan una serie de instrucciones cuando se producen ciertos eventos sobre una tabla.
-- eventos son: 
INSERT, UPDATE o DELETE
*/
 use dbalmacen;
 
 DELIMITER //
 create trigger log_modelo after insert on modelo
 for each row begin
	insert into registro_acciones(accion)
	value (concat('Se registro un nuevo modelo: ',
				NEW.nombre));
end//
 DELIMITER ;




