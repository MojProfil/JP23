

# win+r, upiši cmd te zaljepi sljedeću liniju (prilagoditi putanje - diskove)
# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\skriptajp23.sql
drop database if exists edunovajp23;
create database edunovajp23 CHARACTER SET utf8; 

use edunovajp23;

create table smjer(
    sifra       int not null primary key auto_increment,
    naziv       varchar(50) not null,
    cijena      decimal(18,2),
    trajanje    int,
    verificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    smjer int,
    predavac int,
    datumpocetka datetime,
    brojpolaznika int not null
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50) not null
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50) # komentar
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(50) 
);

create table clan(
    grupa int not null,
    polaznik int not null
);

alter table grupa add foreign key  (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

insert into smjer (sifra,naziv,cijena,trajanje,verificiran) values 
(null,'Računalni operator', 2000, 200, null);

insert into smjer (sifra,naziv,cijena,trajanje,verificiran) values 
(null, 'Java programer', 4999.99, 120, null);

insert into smjer values 
(null, 'PHP programer', 3499.99, 100, null);

insert into grupa (naziv, smjer, brojpolaznika) values 
('JP23', 2, 13);

insert into grupa (naziv,smjer,brojpolaznika) values 
('PP22', 1, 13);

insert into osoba (ime, prezime, email) values
('Tomislav', 'Jakopec', 'tjakopec@gmail.com'),
('Daniel', 'Gluhak', 'gluhakdaniel@gmail.com'),
('Arijana', 'Gluhak', 'ag@gm.com'),
('Shaquille', 'O\'neal', 'shaquile@oneal.com');

INSERT INTO predavac (sifra,osoba) VALUES
(NOT NULL, 4);
INSERT INTO predavac (sifra,osoba) VALUES
(NOT NULL, 1);


SELECT * FROM grupa;

UPDATE grupa SET predavac = 2 WHERE sifra = 1; 
UPDATE grupa SET predavac = 1 WHERE sifra = 2;



