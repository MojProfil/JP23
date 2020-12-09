drop database if exists vjezba2;
create database vjezba2;

use vjezba2;

create table zgrada(
	id int not null primary key auto_increment,
	stan int not null,
	visina varchar(2) not null,
	boja varchar(50),
	brojKatova varchar(2)
	
);
create table stan(
	id int not null primary key auto_increment,
	kvadratura varchar(3),
	kat varchar(2),
	brojProstorija varchar(2)
);

alter table zgrada add foreign key (stan) references stan(id);

insert into stan (id, kvadratura, kat) values
(null, '10', '20'),
(null, '45', '15'),
(null, '55', '40'),
(null, '66', '6');

insert into zgrada(id, stan, visina, boja, brojKatova) values
(null, 1,'25', 'bijela', '12'),
(null, 2,'25', 'bijela', '12'),
(null, 3,'25', 'bijela', '12'),
(null, 4,'25', 'bijela', '12');



select * from zgrada;
select * from stan;
