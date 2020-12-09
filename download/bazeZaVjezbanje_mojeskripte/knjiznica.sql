SELECT * FROM autor WHERE datumrodenja is NULL;

UPDATE autor SET prezime = 'Perišić' WHERE sifra = 3;

CREATE TABLE grad (
	sifra int NOT NULL PRIMARY KEY,
	naziv varchar(50)
);

ALTER TABLE autor drop grad int NOT NULL;
ALTER TABLE autor DROP COLUMN grad;
DESCRIBE autor;

SELECT * FROM katalog WHERE 
(naslov LIKE '%ljubav%' 
OR naslov LIKE '%srce')
AND naslov NOT LIKE 'kuži%'
AND sifra NOT IN (2660, 2664, 2784);

SELECT * FROM izdavac WHERE naziv LIKE '%doo%' 
OR naziv LIKE '%d.o.o%';

SELECT * FROM izdavac WHERE naziv NOT LIKE '%d.o.o%';

SELECT * FROM mjesto WHERE naziv LIKE '%z%';

SELECT * FROM grad;
SELECT * FROM autor;

INSERT INTO autor(sifra, ime, prezime, datumrodenja) values 
(30000,'Daniel', 'Gluhak', '1993-07-12');

SELECT * FROM katalog;

UPDATE katalog SET autor = 30000 WHERE sifra = 1;
 
SELECT naslov 
FROM katalog k INNER JOIN autor a ON k.autor = a.sifra 
WHERE a.datumrodenja BETWEEN '1980-01-01' AND '1980-12-31';

SELECT naslov 
FROM katalog k INNER JOIN izdavac i ON k.izdavac = i.sifra 
WHERE i.aktivan = TRUE;

SELECT ime, prezime 
FROM autor a 
INNER JOIN katalog k ON a.sifra = k.autor 
WHERE k.naslov LIKE '%ljubav%';






