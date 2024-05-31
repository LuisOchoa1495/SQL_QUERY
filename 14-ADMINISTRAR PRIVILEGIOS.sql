-- mostrar usuarios
select * from mysql.user;

-- crear usuario
create user 'user2024' identified by '12345';
create user 'user2024'@localhost identified by '12345';
create user 'user2024'@127.192.10.2 identified by '12345';

-- asignar privilegios
grant all privileges on *.* to 'user2024';
-- realizar cambios
flush privileges;
-- ver privilegios
show grants for 'user2024';

/*
privilegios: create - select - insert - update
-delete- drop
*/

-- revocamos privilegimos
revoke all privileges on *.* from 'user2024';

-- asignar privilegios especificos
grant select,insert,delete on *.* to 'user2024';

-- eliminar usuario
drop user 'user2024';