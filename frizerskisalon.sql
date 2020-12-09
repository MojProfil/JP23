/* c:\xampp\mysql\bin\mysql -uedunova -pedunova < c:\edunova\frizerskisalon.sql */ 

drop database if exists frizerskisalon;
create database frizerskisalon;

use frizerskisalon;


create table posjet(
    sifra int not null primary key auto_increment,
    vrijemeposjeta datetime not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    nazivUsluge varchar(50),
    cijenaUsluge decimal(3,2)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    kontaktBr varchar (15) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    posjet int not null,
    usluga int not null
);

create table djelatnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    posjet int not null,
    korisnik int not null,
    oib char(11),
    iban varchar(50),
    vrstaUgovora boolean
);

alter table korisnik add foreign key (posjet) references posjet(sifra);
alter table korisnik add foreign key (usluga) references usluga(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table djelatnik add foreign key (posjet) references posjet(sifra);
alter table djelatnik add foreign key (korisnik) references korisnik(sifra);
alter table djelatnik add foreign key (osoba) references osoba(sifra);

