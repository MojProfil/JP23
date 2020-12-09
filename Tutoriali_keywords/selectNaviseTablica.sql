select * from smjer;

# osnovna konstrukcija, zamjenska imena a,b,c,d,...
select a.sifra, a.naziv,b.naziv as smjer
from grupa a inner join smjer b on a.smjer=b.sifra
where b.naziv like '%a%';

select grupa.sifra, grupa.naziv,smjer.naziv as smjer
from grupa inner join smjer on grupa.smjer=smjer.sifra
where smjer.naziv like '%a%';

select g.sifra , g.naziv , s.naziv as smjer 
from grupa g inner join smjer s on g.sifra =s.sifra 
where s.naziv like '%a%';


# stari način inner join
select a.sifra , a.naziv , b.naziv as smjer
from grupa a, smjer b
where a.smjer =b.sifra and b.naziv like '%a%';

select * from grupa;

select a.sifra , b.ime , b.prezime 
from predavac a inner join osoba b on a.osoba=b.sifra;

# zadatak: 
# Unesite novog predavača Shaquille O'Neal

insert into osoba(ime,prezime,email) values ('Shaquille','O''Neal','shaki@gmail.com');
insert into osoba(ime,prezime,email) values ("Shaquille","O'Neal","shaki@gmail.com");
insert into osoba(ime,prezime,email) values ('Shaquille','O\'Neal','shaki@gmail.com');

select * from osoba where ime='Shaquille';

insert into predavac (osoba) values (21);

select sifra from predavac where osoba=21;

# Grupu JP23 vodi Tomislav Jakopec, grupu PP22 vodi Shaquille O'Neal
update grupa set predavac =1 where sifra=1;
update grupa set predavac =2 where sifra=2;



# spajanje više tablica
select a.naziv , b.naziv as smjer , d.ime, d.prezime 
from grupa a 
inner join smjer b on a.smjer =b.sifra 
inner join predavac c on a.predavac =c.sifra 
inner join osoba d on c.osoba=d.sifra;

# zadatak: Ispišite imena i prezimena svih polaznika grupe JP23
select d.prezime, d.ime
from grupa a 
inner join clan b on a.sifra=b.grupa
inner join polaznik c on b.polaznik =c.sifra
inner join osoba d on c.osoba=d.sifra
where a.naziv ='JP23';


select * from smjer; #3
select * from grupa; #2

# inner join 2 rezultata
select a.naziv, b.naziv as grupa
from smjer a inner join grupa b on a.sifra =b.smjer;

# 3 rezultata
select a.naziv, b.naziv as grupa
from smjer a left join grupa b on a.sifra =b.smjer;

# 2 rezultata
select a.naziv, b.naziv as grupa
from smjer a right join grupa b on a.sifra =b.smjer;

# right join krenuti na left
select b.naziv, a.naziv as grupa
from grupa a left join smjer b on a.smjer =b.sifra;

# Baza knjiznica
# 1. zadatak
# odaberite sve naslove knjiga koje su napisali autori rođeni 1980 godine
select a.sifra, a.naslov
from katalog a inner join autor b on a.autor =b.sifra 
where b.datumrodenja between '1980-01-01' and '1980-12-31';

# odaberite sve naslove koji su izdani od strane aktivnih izdavača

# odaberite imena i prezimena autora koji su pisali knjige na ljubavnu tematiku


# Baza world
# odaberite imena gradova u Europi

# odaberite nazive zemalja u kojima se priča španjolski jezik

