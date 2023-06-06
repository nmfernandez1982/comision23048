/*Vistas*/

create view clientesHabilitados AS
select * from clientes where estado=1;

/*Procedimiento almacenado/Store Procedure*/

create procedure clientes()
select * from clientes where estado=1;
call clientes();

/*tabla vendedores / Ventas/ detalle ventas*/


create table vendedor
(
id int not null auto_increment,
nombre varchar(40),
apellido varchar(40),
primary key(id)
);

select * from vendedor;

insert into vendedor values (null,'Pedro', 'Alvaerez');
insert into vendedor values (null,'juan', 'Alvaerez');
insert into vendedor values (1,'Alberto', 'Hernandez');
insert into vendedor values (null,'Camila', 'Rey');

delete from vendedor;

create table ventas
(
id_factura int not null primary key,
fecha_emision date,
id_cliente int not null,
id_vendedor int not null,
created_at date, 
updated_at date,
created_by int not null,
updated_by int not null
);

create table detalle_ventas
(
id int not null auto_increment primary key,
id_factura int not null,
id_producto int not null,
cant int not null,
precio double
);


create table productos
(
id int not null auto_increment primary key,
descripcion varchar(20),
stock int
);



alter table ventas
add foreign key (id_cliente)
references clientes(id_cliente);


alter table ventas
add foreign key (id_vendedor)
references vendedor(id);

alter table ventas
add foreign key (id_factura)
references detalle_ventas(id_factura);



alter table detalle_ventas
add foreign key (id_producto)
references productos(id);


insert into productos values (null,'Celular LG',23);
insert into productos values (null,'Tablet Samsung',10);
insert into productos values (null,'TV LCD 29 ',40);



insert into detalle_ventas values (null,1,2,2,40.000);
insert into detalle_ventas values (null,1,3,1,80.000);
insert into detalle_ventas values (null,2,2,1,80.000);


insert into ventas values (1,now(),2,1,now(),now(),1,1);

insert into ventas values (2,now(),2,1,now(),now(),1,1);


select * from ventas;

select ventas.id_factura,
fecha_emision,
productos.descripcion,
/*clientes.nombre as 'Nombre cliente',*/
/*clientes.apellido as 'Apellido Clientes',*/
concat(clientes.nombre,' ',clientes.apellido) as 'Cliente',
concat(vendedor.nombre,' ',vendedor.apellido) as 'Vendedor'
from ventas
join clientes on clientes.id_cliente=ventas.id_cliente
join vendedor on vendedor.id=ventas.id_vendedor
join detalle_ventas on detalle_ventas.id_factura=ventas.id_factura
join productos on detalle_ventas.id_producto=productos.id;




