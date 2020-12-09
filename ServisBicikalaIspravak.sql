DROP DATABASE zavrsni;
CREATE DATABASE zavrsni;

use  zavrsni;

CREATE TABLE kupac(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ime varchar(50),
	prezime varchar(50),
	email varchar(50),
	mobitel varchar(50)
);

CREATE TABLE bicikl(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	proizvodac varchar(50),
	model varchar(50),
	podGarancijom boolean
);

CREATE TABLE uslugaServisa(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	naziv varchar(100) NOT null,
	cijena int NOT null
);

CREATE TABLE radniNalog(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	kupac int NOT NULL,
	bicikl int NOT NULL,	
	datumZaprimanja datetime,
	datumIzdavanja datetime
);

CREATE TABLE stavkeRadnogNaloga(
	uslugaservisa int NOT NULL,
	radninalog int NOT NULL
	kolicina int NOT null,
	cijena int NOT null
);

ALTER TABLE radninalog ADD FOREIGN KEY (kupac) REFERENCES kupac (sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (bicikl) REFERENCES bicikl (sifra);
ALTER TABLE stavkeradnognaloga ADD FOREIGN KEY (uslugaservisa) REFERENCES uslugaservisa (sifra);
ALTER TABLE stavkeradnognaloga ADD FOREIGN KEY (radninalog) REFERENCES radninalog (sifra);