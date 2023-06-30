use base23048;
drop table provincias;
drop table clientes;


create table socios
(
id_socio int not null auto_increment,
nombre varchar(30),
apellido varchar(30),
dni int not null unique,
mail varchar(40) not null unique,
estado boolean,
fecha_alta date,
primary key(id_socio)
);


insert into socios values (1,'Nicolas','Fernandez',29031734,'nicolas@gmail.com',true,now());
insert into socios values (null,'julieta','Rey',28031734,'julieta@gmail.com',true,now());
insert into socios values (null,'Enzo','Gomez',27031734,'enzo@gmail.com',true,now());
insert into socios values (null,'Camila','Gutierrez',26031734,'camila@gmail.com',true,now());
insert into socios values (null,'Hector','Perez',25031734,'hector@gmail.com',true,now());

select * from socios;