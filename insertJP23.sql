select * from smjer;

# najlošiji
# 1
insert into smjer values (null,'Java programiranje',4999.99,130,true); 

# malo bolji način
# 2
insert into smjer (sifra,naziv) values (null,'PHP programer');

# best practice
# 3
insert into smjer (sifra,naziv,cijena,trajanje,verificiran)
values (null,'Računalni operator',2000,200,null);

describe grupa;
select * from grupa;

# 1
insert into grupa(naziv,smjer,brojpolaznika) values ('JP23',1,13);

# 2
insert into grupa(naziv,smjer,brojpolaznika) values ('PP22',2,13);

select * from osoba;
# 1 - 20
insert into osoba (prezime,ime,email) values
('Jakopec','Tomislav','tjakopec@gmail.com'),
('Šantek','Natalija','natalis811@gmail.com'),
('Čiček','David','official.davidcicek@gmail.com '),
('Ivezić','Iva','ivaivezic95@gmail.com'),
('Nebes','Tomislav','tomislav.nebes@gmail.com'),
('Blatančić','Antonio','antonio.blatancic21@gmail.com'),
('Jurišić','Ivan','ivan.1jurisic@gmail.com'),
('Bralić','Marija','marija.bralic96@gmail.com'),
('Svalina','Gabriela','gabriela.svalina@gmail.com'),
('Nađ','Filip','filip.nad100@gmail.com'),
('Bebek','Marko','bebekm77@gmail.com'),
('Klobučar','Filip','filip.klobucar1@hotmail.com'),
('Gluhak','Daniel','gluhakdaniel@gmail.com'),
('Ivić','Matija','matija.ivic@gmail.com'),
('Vujičić','Velimir','velimir.vujicic@hotmail.com'),
('Cuca','Luka','lukacuca@gmail.com'),
('Predmerski','Boris','bpredmerski@gmail.com'),
('Milišić','Laura','laura.milisic@outlook.com'),
('Kovačić','Laura','laurakciic@gmail.com'),
('Kovačević','Ivana','kovacevic.ivana044@gmail.com');


select * from predavac;
#1
insert into predavac (osoba,iban) values (1,'');

# 1-19
select * from polaznik;

insert into polaznik (osoba)
select sifra from osoba where sifra>1;

insert into clan (grupa,polaznik)
select 1,sifra from polaznik;

