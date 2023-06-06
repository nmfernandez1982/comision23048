SELECT nombre,mail FROM com23047.clientes limit 10;


SELECT * FROM com23047.clientes where nombre like 'Maria%'  ;


SELECT * FROM com23047.clientes where nombre like '_a%'  ;


/*
SELECT * FROM com23047.clientes where nombre like '_[a,u,i]%'  ;
*/

select * from clientes where id_cliente=7 or id_cliente=11 or id_cliente=12; 

select * from clientes where id_cliente in (7,11,12);

select * from clientes where nombre in ('Pablo','Romina','Susana');


select * from clientes where nombre like 'Pablo' and estado=1 and id_provincia=2;

select * from clientes where id_cliente between 38 and 50; 

select * from clientes where  year(fecha_alta) between 2020 and 2021;

select * from clientes where  year(fecha_alta)=2020 or year(fecha_alta)=2021;

select * from clientes where fecha_alta between  '2021-01-01' and now();

select * from clientes where fecha_alta not between  '2021-01-01' and now();

select * from clientes where id_cliente not in (7,11,12);

select * from clientes where nombre not in ('Pablo','Romina','Susana');


select  day(fecha_alta) from clientes;
select  month(fecha_alta) from clientes;
select  year(fecha_alta) from clientes;
---------------------------------

select distinct(id_provincia) from clientes;




select * from clientes;


/*
join / inner join

left join
right join

full join
cross join
*/

select nombre,apellido,descripcion from clientes
join provincias on clientes.id_provincia=provincias.id ;

select nombre,apellido,descripcion from clientes
left join provincias on clientes.id_provincia=provincias.id ;

select nombre,apellido,descripcion from clientes
right join provincias on clientes.id_provincia=provincias.id order by id_cliente;

select * from provincias;

insert into provincias values (7,"San Luis");
insert into provincias values (8,"Buenos Aires");



insert into clientes values (401,'Nicolas','Fernandez',29031734,'nad@hotmail.com',null,now(),1);

/*Campos Calculados*/


select * from clientes;

update clientes set apellido = null where id_cliente=400;

select count(id_cliente) from clientes;

select max(id_provincia) from clientes;

select min(id_provincia) from clientes;



AVG
SUM

select * from clientes where id_cliente = (select max(id_cliente) from clientes);

select max(id_cliente) from clientes;

















