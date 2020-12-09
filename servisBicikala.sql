CREATE DATABASE zavrsni;
DROP DATABASE zavrsni;
USE zavrsni;

CREATE TABLE djelatnik(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ime varchar(50) NOT null,
	prezime varchar(50) NOT null,
	oib char (11),
	iban varchar(25)
);
DROP TABLE kupac;
CREATE TABLE kupac(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	djelatnik int NOT NULL,
	ime varchar(50),
	prezime varchar(50),
	email varchar(50),
	mobitel varchar(50)
);

CREATE TABLE bicikl(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	proizvođač varchar(50),
	model varchar(50),
	podGarancijom boolean
);

CREATE TABLE uslugaServisa(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	naziv varchar(100) NOT null,
	količina int NOT null,
	cijena int NOT null
);

CREATE TABLE radniNalog(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bicikl int NOT NULL,
	kupac int NOT NULL,
	uslugaservisa int NOT NULL,
	datumZaprimanja datetime,
	datumIzdavanja datetime
);

ALTER TABLE kupac ADD FOREIGN KEY (djelatnik) REFERENCES djelatnik(sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (bicikl) REFERENCES bicikl (sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (kupac) REFERENCES kupac (sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (uslugaservisa) REFERENCES uslugaservisa (sifra);