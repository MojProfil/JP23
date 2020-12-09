# AS - operator filtriranja koji mijenja prikaz, ali ne atribut

select sifra, ime from osoba;

select sifra, 2,3, ime, 'Zagreb' from osoba;

select sifra as id, 2 as sifra, ime as grad from osoba;

select concat (ime, ' ', prezime) as polaznik from osoba where sifra > 2;

select concat(ime, ' ', prezime) from osoba where ime = 'Daniel';

# NOT, OR, AND

select * from osoba where prezime != 'gluhak';

select * from osoba where not prezime = 'gluhak';

select * from osoba where sifra=1 or sifra=2;

select * from osoba where ime = 'Daniel' and prezime = 'Gluhak';

select * from osoba where oib = '17438491055';
select concat (ime, ' ', prezime, oib) from osoba where oib;

#null i not null - IS operator, ne =

select * from osoba where oib is not null;
 
# LIKE - 'D%' - daj mi sve što počinje sa D

select * from osoba where ime like 'D%';
select * from osoba where ime like '%an%';
select * from osoba where prezime like '%ić';

# in - vraća dvije tražene vrijednosti

select * from osoba where sifra in (1,3);

# between - vraća vrijednosti >= i <= zadanim vrijednostima

select * from osoba where sifra between 5 and 15;

#datetime - godina, mjesec, dan, vrijeme





