
use zupanijaOpcina;

create table županija(
	šifra int not null primary key auto_increment,
	župan int not null,
	naziv varchar(40)
);
create table opcina(
	šifra int not null primary key auto_increment,
	županija int not null,
	naziv varchar(40)
);
create table mjesto(
	šifra int not null primary key auto_increment,
	opcina int not null,
	naziv varchar(40)	
);
create table župan(
	šifra int not null primary key auto_increment,
	ime varchar(20),
	prezime varchar(20)
);
alter table županija add foreign key (župan) references župan (šifra);
alter table opcina add foreign key (županija) references županija (šifra);
alter table mjesto add foreign key (opcina) references opcina (šifra);

insert into župan (šifra, ime, prezime) values 
(null, 'Đuro', 'Lopata'),
(null, 'Mile', 'Bandinjo'),
(null, 'John', 'Wayne');

insert into županija (šifra, župan, naziv) values 
(null, 2, 'Grad Zagreb'),
(null, 1, 'Ličko-Senjska'),
(null, 3, 'Primorsko-Goranska');

insert into opcina (šifra, županija, naziv) values
(null, 1, 'PrvaOpcina'),
(null, 1, 'DrugaOpcina'),
(null, 2, 'TrecaOpcina'),
(null, 2, 'CetvrtaOpcina'),
(null, 3, 'PetaOpcina'),
(null, 3, 'SestaOpcina');

insert into mjesto (šifra, opcina, naziv) values
(null, 1, 'Dugave'),
(null, 2, 'Travno'),
(null, 1, 'Siget'),
(null, 2, 'Sloboština'),
(null, 3, 'Vukojebina'),
(null, 3, 'Brdo lijevo'),
(null, 4, 'Brdo desno'),
(null, 4, 'Neka gora'),
(null, 5, 'Pri vodi'),
(null, 6, 'Mjesto desno'),
(null, 6, 'Mjesto na vodi');

update mjesto set
	naziv = 'Čorki'
where šifra = 8;

update mjesto set 
	opcina = 6 
where naziv = 'Brdo desno';

update županija set
	župan = 2
where šifra = 2;

update opcina set
	županija = 3
where šifra = 4;

delete from župan where šifra =1;

select * from županija;


delete from županija where šifra = 1;

delete from opcina where šifra = 1;
delete from opcina where šifra = 2;

delete from mjesto where šifra = 1;
delete from mjesto where šifra = 2;
delete from mjesto where šifra = 3;
delete from mjesto where šifra = 4;

	


