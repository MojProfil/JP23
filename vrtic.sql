drop database if exists vrtic;
create database vrtic;

use vrtic;

create table osoba(
    lozinka int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    spol boolean,
    oib char(11)
);

create table djete(
    lozinka int not null primary key auto_increment,
    imeRoditelja varchar(50) not null,
    grupa int not null,
    odgajateljica int not null,
    osoba int not null
);

create table grupa(
    lozinka int not null primary key auto_increment,
    naziv varchar(10),
    kat int,
    brojDjece char(20),
    odgajateljica int not null
);


create table odgajateljica(
    lozinka int not null primary key auto_increment,
    osoba int not null,
    rasporedRada datetime  
);

alter table djete add foreign key (grupa) references grupa(lozinka);
alter table djete add foreign key (odgajateljica) references odgajateljica(lozinka);
alter table djete add foreign key (osoba) references osoba(lozinka);

alter table grupa add foreign key (odgajateljica) references odgajateljica(lozinka);
alter table odgajateljica add foreign key (osoba) references osoba(lozinka);
