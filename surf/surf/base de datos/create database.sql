CREATE DATABASE VicSurf;

CREATE TABLE producto( 
    id varchar(9), 
    nombre varchar(100),
    precio float,	    
    primary key(id)
);

CREATE TABLE empleado( 
    DNI varchar(9),         
    nombre varchar(100),  
    apellido varchar(100),
    correo varchar(100),
    telefono varchar(30),
    direccion varchar(150),
    cargo varchar(100),
    sueldo float,
    primary key(DNI)
);
    
CREATE TABLE cliente(
    DNI varchar(9),
    nombre varchar(100)
    apellido varchar(100),
    correo varchar(100),
    telefono varchar (30),
    direccion varchar(150),
    primary key(DNI)
);

CREATE TABLE proveedor(
    cif varchar(10),
    nombre varchar(100),
    direccion varchar(100),
    telefono varchar(30),
    id_producto varchar(9),
    primary key(id),
    foreign key(id_producto) references producto(id)
);

CREATE TABLE curso(
    id serial,
    nombre varchar(100),
    id_empleado int,
    id_cliente varchar(9),
    primary key(id),
    foreign key(id_cliente) references cliente(id) 
);

CREATE TABLE hace(
    id_cliente varchar(9),
    id_curso int,
    fechainicio date,
    fechafin date,
    nota float,
    primary key (id_cliente, id_curso),
    foreign key id_cliente references cliente(id),
    foreign key id_curso references curso(id)
);


INSERT INTO producto( id, nombre ) VALUES ( "AAA1", "TABLA QUIKSILVER ALL TIME 6,4" );
INSERT INTO producto( id, nombre ) VALUES ( "AAA2", "TABLA SSB LA91 6.8 96/22" );
INSERT INTO producto( id, nombre ) VALUES ( "AAA3", "TABLA SSB LA91 7.6 147/22" );
INSERT INTO producto( id, nombre ) VALUES ( "AAA4", "TABLA SSB LA91 7.3 139/22" );
INSERT INTO producto( id, nombre ) VALUES ( "AAA5", "TABLA SSB LA91 7.2 129/22" );
INSERT INTO producto( id, nombre ) VALUES ( "AAA6", "TABLA SSB LA91 7.1 122/22" );
INSERT INTO producto( id, nombre ) VALUES ( "BBB1", "NEOPRENO MATUSE DARC HYDRASILK 3/2 MM" );
INSERT INTO producto( id, nombre ) VALUES ( "BBB2", "NEOPRENO O NEILL BAHIA 2//1 FZ" );
INSERT INTO producto( id, nombre ) VALUES ( "BBB3", "NEOPRENO O NEILL REACTOR-2 3/2 BZ" );
INSERT INTO producto( id, nombre ) VALUES ( "CCC1", "TNEOPRENO MATUSE DANTE HYDRASILK 3/2 MM" );
INSERT INTO producto( id, nombre ) VALUES ( "CCC2", "NEOPRENO QUIKSILVER LSS HIGHLINE" );
INSERT INTO producto( id, nombre ) VALUES ( "CCC3", "NEOPRENO QUIKSILVER HIGHLINE LITE" );
INSERT INTO producto( id, nombre ) VALUES ( "DDD1", "NEOPRENO O NEILL TODDLER RECTOR SHORTY 2/2 BZ" );
INSERT INTO producto( id, nombre ) VALUES ( "DDD2", "NEOPRENO BUELL RB1 JUNIOR 4/3 ACCELERATIOR FULLSUIT" );
INSERT INTO producto( id, nombre ) VALUES ( "DDD3", "NEOPRENO O NEILL NIÑO HYPERFREAK CS 4/3" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE1", "BODYBOARD DYNAMX T 41" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE2", "Bodyboard Dynamx T 40" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE3", "BODYBOARD DYNAMX P 41" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE4", "INVENTO MUÑECA SNIPER REGULAR" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE5", "FUNDA BODYBOARD SNIPER SINGLE DELUXE" );
INSERT INTO producto( id, nombre ) VALUES ( "EEE6", "BODYBOARD SNIPER DEMON 42" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF1", "Sudadera con capucha Classic" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF2", "Bolsa de Cuerdas Prime" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF3", "Polo Classic" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF4", "Camiseta classic BIO mujer" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF5", "Cinta de pelo LIGHT" );
INSERT INTO producto( id, nombre ) VALUES ( "FFF6", "Sudadera con capucha Classic 2" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG1", "MINI KIT PARA REPARAR TABLAS" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG2", "SURF RAX QUIKSILVER" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG3", "GRIP DAKINE SHANE DORIAN 3P" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG4", "PARAFINA STICKY BUMPS TOUR SERIES COOL-COLD" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG5", "FUNDA ULTRALITE SHORTBORAD 5,8 QUIKSILVER" );
INSERT INTO producto( id, nombre ) VALUES ( "GGG6", "QUILLAS FUTURES AM2 TECHFLEX" );


INSERT INTO empleado( DNI, nombre, apellido, correo, telefono, direccion, cargo, sueldo ) VALUES ( "78426755T", "Vicente", "Castro",  "697126654", "vicente@gmail.com", "Calle el pie", "Vendedor",       1500);
INSERT INTO empleado( DNI, nombre, apellido, correo, telefono, direccion, cargo, sueldo ) VALUES ( "78426755T", "Raul",    "Pérez",   "689765432", "raul3@gmail.com", "Calle la mano", "Vendedor",        1500);
INSERT INTO empleado( DNI, nombre, apellido, correo, telefono, direccion, cargo, sueldo ) VALUES ( "78426755T", "Jowi",    "Mendoza", "678540888", "Jowi04@gmail.com", "Calle San domingo", "Vendedor",   1500);
INSERT INTO empleado( DNI, nombre, apellido, correo, telefono, direccion, cargo, sueldo ) VALUES ( "78426755T", "Juanma",  "Padron",  "698432154", "juanmaMaster@gmail.com", "Calle lunes", "Vendedor",   1500);
INSERT INTO empleado( DNI, nombre, apellido, correo, telefono, direccion, cargo, sueldo ) VALUES ( "78426755T", "Damian",  "Chester", "673123045", "DamianChes@gmail.com", "Calle el martes", "Vendedor", 1500);


INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Luis",      "Perez",     "luisP@gmail.com",       "687456345", "Calle Santo pere" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Domingo",   "Dominguez", "Domingo12@gmail.com",   "687445455", "Calle Santa luisa" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Vicente",   "Perez",     "vicenteP14@gmail.com",  "664563411", "Calle el gato" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Jowis",     "Mendez",    "Jowies3@gmail.com",     "652451254", "Calle el perro" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Raul",      "Castro",    "Rau223@gmail.com",      "686765445", "Calle el elefante" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "María",     "Placeres",  "Ria03@gmail.com",       "695463332", "Calle nando" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Luisa",     "Linares",   "Luisap32@gmail.com",    "685632356", "Calle los manes" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Fernando",  "Rodriguez", "Fernando65@gmail.com",  "675634532", "Calle hispanos" );
INSERT INTO cliente( DNI, nombre, apellido, correo, telefono, direccion ) VALUES ( "794938475", "Alejandro", "Gutierrez", "Alejandro65@gmail.com", "694563432", "Calle lurdes" );


INSERT INTO proveedor( id, nombre, direccion, telefono, id_producto ) VALUES ( "3493347816", "IndusSurf", "Calle pelaez 23", "987543196", "1" );
INSERT INTO proveedor( id, nombre, direccion, telefono, id_producto ) VALUES ( "3493347816", "IndusSurf", "Calle pelaez 23", "987543196", "2" );
INSERT INTO proveedor( id, nombre, direccion, telefono, id_producto ) VALUES ( "3493347816", "IndusSurf", "Calle pelaez 23", "987543196", "3" );
INSERT INTO proveedor( id, nombre, direccion, telefono, id_producto ) VALUES ( "3493347816", "IndusSurf", "Calle pelaez 23", "987543196", "4" );
INSERT INTO proveedor( id, nombre, direccion, telefono, id_producto ) VALUES ( "3493347816", "IndusSurf", "Calle pelaez 23", "987543196", "5" );


INSERT INTO curso( nombre ) VALUES ( "Iniciación en surf" );
INSERT INTO curso( nombre ) VALUES ( "Surf intermedio" );
INSERT INTO curso( nombre ) VALUES ( "Surf experto, puntos claves para mejorar" );

INSERT INTO hace( "794938475", 1, "10/2/2023", null, null );
INSERT INTO hace( "783423145", 2, "10/3/2023", null, null );
INSERT INTO hace( "783423145", 2, "10/3/2023", null, null );
INSERT INTO hace( "783423145", 2, "10/3/2023", null, null );
INSERT INTO hace( "783423145", 2, "10/3/2023", null, null );




