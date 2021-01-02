select
timestampdiff( year, '1980-12-07', now() ) as 'Year',
timestampdiff( month, '1980-12-07', now() ) % 12 as 'Months',
timestampdiff( day, '1980-12-07', now() ) % (((3*365)+366)/12) as 'Days';
# 3 godine po 365 dana plus prijestupna godina od 366 dana podjeljena s 12 mjeseci u godini

select * from smjer;
select * from grupa;
select * from clan;

# procedure
delimiter $$
create procedure brisismjer(in sifrasmjera int)
begin
	delete from clan where grupa=(select sifra from grupa where smjer=sifrasmjera);
	delete from grupa where smjer=sifrasmjera;
	delete from smjer where sifra=sifrasmjera;
end;
delimiter ;

call brisismjer(1); 


# okidači (trigger)


create table logiranje(
	sifra int not null primary key auto_increment,
	tablica varchar(255),
	sto varchar(255),
	kada datetime default now()
);

select * from logiranje;

delimiter $$
create trigger osoba_unos before insert on osoba for each row
begin 
	insert into logiranje(tablica,sto) values
	('osoba', concat('novi unos: ',new.ime,' ',new.prezime));
end;
delimiter ;

select email('Pero','Perić');

insert into osoba(ime,prezime,email) values ('Pero','perić',email('Pero','Perić'));


delimiter $$
create trigger osoba_promjena before update on osoba for each row
begin 
	insert into logiranje(tablica,sto) values
	('osoba', concat(  
     'stari unos: ',old.ime,' ',old.prezime, ' - ',
	 'novi unos: ',new.ime,' ',new.prezime));
end;
delimiter ;

select * from osoba where ime='Pero';

update osoba set prezime='Perić' where sifra=21;


delimiter $$
create trigger osoba_brisanje after delete on osoba for each row
begin 
	insert into logiranje(tablica,sto) values
	('osoba', concat('obrisano: ',old.ime,' ',old.prezime));
end;
delimiter ;

delete from osoba where sifra=21;

select * from osoba;



