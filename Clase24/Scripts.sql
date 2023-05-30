/*
Tipos de datos numericos enteros

tinyint   -128/127
smallint  -32768/32767
int -2.147.483.648 / 2.147.483.647.
bigint -9223372036854775808 to 9.223.372.036.854.775.807.

Tipos de datos numericos con decimales
float
decimal
double




Tipos de datos alfanumericos
----------------------------
char    max.255 caracteres
varchar max.255 caracteres
text
tinytext max.255 caracteres
mediumtext 16,777,215 characters
longtext  4,294,967,295 characters
ENUM -->enumerador.
SET -->Objetos




tipos de datos DATE
-------------------
date
datetime
time
year
timespam



otros tipos
blob
boolean

*/


create database base23048;

use base23048;


create table clientes 
(
id int not null auto_increment,
nombre varchar(40),
apellido varchar(50),
dni int,
mail varchar(30) unique,
fecha_alta date,
estado boolean,
primary key(id)
);

create table provincias
(
id tinyint not null auto_increment,
descripcion varchar(50),
primary key(id)
);


insert into provincias values (1,'Cordoba');

select * from provincias;

insert into provincias values (2,'Santa Fe');









drop table clientes;

select * from clientes;


