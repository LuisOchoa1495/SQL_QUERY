/*CREAR BD*/
create database dbalmacen;
use dbalmacen;

/*tabla pais*/
create table pais(
id int not null primary key auto_increment,
nombre varchar(50)
);

/*tabla memoria*/
create table memoria(
id int not null primary key auto_increment,
almacenamientoGB varchar(50)
);


/*tabla modelo*/
create table modelo(
id int not null primary key auto_increment,
nombre varchar(50),
descripcion varchar(120)
);

/*tabla marca*/
create table marca(
id int not null primary key auto_increment,
nombre varchar(50),
idPais int
);

/*tabla almacen*/
create table almacen(
id int not null primary key auto_increment,
idMarca int,
idModelo int,
idMemoria int,
cantidad int
);

/*llaves foraneas*/
alter table marca add foreign key(idPais) references pais(id);
alter table almacen add foreign key(idMarca) references marca(id);
alter table almacen add foreign key(idModelo) references modelo(id);
alter table almacen add foreign key(idMemoria) references memoria(id);


