drop database if exists zastitaZivotinja;
drop database if exists zastitaZovitnja;
create database zastitaZivotinja;

use zastitaZivotinja;

create table djelatnik (
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime varchar(20) not null,
    oib varchar(20) not null
);

create table sticenik (
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    pasmina varchar(30) not null,
    kilogrami decimal(2,2),
    boja varchar(15) not null,
    djelatnik int not null
);

create table prostor (
    sifra int not null primary key auto_increment,
    sifraProstora char(3) not null,
    sticenik int not null
);

alter table sticenik add foreign key (djelatnik) references djelatnik(sifra);
alter table prostor add foreign key (sticenik) references sticenik(sifra);