drop database if exists taxiSluzba;
create database taxiSluzba;

use taxiSluzba;

create table driver(
	id int not null primary key auto_increment,
	vehicle int not null,
	name varchar(30) not null,
	surname varchar(30) not null,
	oib char(11),
	iban varchar(20)
);

create table vehicle(
	id int not null primary key auto_increment,
	driver int not null,
	manufacturer varchar(30) not null,
	model varchar(50),
	color varchar(15),
	licensePlate varchar(8) not null
);

alter table vehicle add foreign key (driver) references driver(id);

insert into driver (id, vehicle, name, surname) values
(null,2, 'John', 'Doe'),
(null,1, 'Ivica', 'Doje'),
(null,1, 'Arnold', 'Schwartzenegger');

insert into vehicle (id,driver, manufacturer, licensePlate) values
(null, 1, 'Citroen', 'ZG1234AB'),
(null, 3, 'AUdi', 'ZG1234AB');

select * from driver;
select * from vehicle;






