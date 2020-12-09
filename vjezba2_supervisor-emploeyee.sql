drop database if exists vjezba2;
create database vjezba2;

use vjezba2;

create table employee(
	id int not null primary key auto_increment,
	name varchar(30),
	lastName varchar(30),
	supervisor int not null
);

create table supervisor(
	id int not null primary key auto_increment,
	employeeId char(3),
	salary decimal(6,2),
	sector varchar (50)
);

alter table employee add foreign key (supervisor) references supervisor(id);

insert into supervisor (id, employeeId, salary, sector) values
(null, '001', 1850.85, 'domestic flights'),
(null, '002', 2347.35, 'international flights'),
(null, '003', 1878.45, 'security check');

select * from supervisor;

insert into employee (id, name, lastName, supervisor) values
(null, 'John', 'Waine', 1);




