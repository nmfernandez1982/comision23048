/*
DDL
create
alter
drop


DML
select
insert
update
delete
*/


select * from provincias;
insert into provincias values (3,'La Pampa');
insert into provincias values (4,'Misiones');
insert into provincias values (5,'Entre Rios');

insert into provincias values (6,'San Juan');
insert into provincias values (7,'Jujuy');
insert into provincias values (8,'Santa Cruz');


select * from clientes;
insert into clientes values (1,'Nicolas','Fernandez',29031734,'nmfernandez@gmail.com',now(),true);
insert into clientes values (2,'German','Hernandez',29031736,'nmfernandez12@gmail.com',now(),true);
insert into clientes values (3,'Camila','Gomez',29031737,'nmfernandez131@gmail.com',now(),true);
insert into clientes values (4,'Carla','Perez',29031738,'nmfernandez1313@gmail.com',now(),true);
insert into clientes values (5,'Carlos','Juarez',29031712,'nmfernandez13134@gmail.com',now(),true,4);
insert into clientes values (6,'pedro','Fernández',2903173423,'nmfernandez1212@gmail.com',now(),true,2);

alter table clientes
add column provincia_id tinyint not null after estado;


update clientes set provincia_id=4 where id=3;

update clientes set estado=false where id=3;


alter table clientes
add foreign key(provincia_id)
references provincias(id);

select * from provincias;


delete from provincias where id=4;

insert into provincias values (4,'Misiones');

/*
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
*/

select * from clientes;


select nombre,dni,mail from clientes limit 2;

select nombre as 'Nombre'  ,dni as 'Documento',mail as 'E-Mail' from clientes limit 2;


select * from clientes where id=2;

select * from clientes where provincia_id=4;

select * from clientes where estado=0;

select * from clientes where estado=1;

select * from clientes where apellido like 'Hernandez';


select * from clientes where apellido like '%dez';

select * from clientes where apellido like 'Fernandez';

update clientes set apellido='Fernondez' where id=6;

select * from clientes where apellido like 'Fern_ndez';



