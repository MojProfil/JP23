select * from smjer;
select * from grupa;
select * from predavac;

update smjer set 
	cijena = 1000 
where sifra = 1;

update smjer set 
	cijena = 4999.99, 
	trajanje = 200 
where sifra = 1;

update smjer set
	naziv = null 
where sifra=1;

update grupa set
	smjer=1, predavac = 1
	where sifra=1;

update grupa set 
	smjer = 2, predavac = 2
	where sifra = 2;
	
update grupa set
	smjer = 4, predavac = 1
	where sifra = 3;
	
update osoba set oib = '17438491055' where sifra = 14;
update osoba set oib = '12345678901' where sifra = 15;
update osoba set oib = '13467985215' where sifra = 16;
update osoba set oib = '34917563147' where sifra = 17;
update osoba set oib = '17965478315' where sifra = 18;

alter table smjer add iznos decimal(18,2) not null default 0;
alter table smjer add randomBroj decimal(18,2);

update smjer set randomBroj = rand();
update smjer set iznos=10 +  (rand()*90);

SELECT * FROM smjer;

update smjer set iznos = iznos+10;

update smjer set randomBroj = iznos-15;
#smanji cijenu za 15%:
update smjer set cijena = cijena - (cijena*0.15);
#ili
update smjer set cijena = cijena*0.85;

update grupa set datumpocetka ='2020-02-10 17:05:00' where sifra = 2;


#ZADATAK: obrisi smjer Java programiranje i sve vezane podatke
delete from clan where grupa = 1;
delete from grupa where sifra = 1;
delete from smjer where sifra = 1;