use  zavrsni;
CREATE TABLE serviser(
	#sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bicikl int NOT NULL PRIMARY key,
	ime varchar(50) NOT null,
	prezime varchar(50) NOT null,
	oib char (11),
	iban varchar(25)
);

CREATE TABLE kupac(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ime varchar(50),
	prezime varchar(50),
	email varchar(50),
	mobitel varchar(50)
);

CREATE TABLE bicikl(
	#sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	serviser int NOT NULL PRIMARY key,
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
	kupac int NOT NULL,
	bicikl int NOT NULL,	
	uslugaServisa int NOT null,
	datumZaprimanja datetime,
	datumIzdavanja datetime
);

ALTER TABLE bicikl ADD FOREIGN KEY (serviser) REFERENCES serviser (bicikl);
ALTER TABLE radniNalog ADD FOREIGN KEY (kupac) REFERENCES kupac (sifra);
ALTER TABLE radniNalog ADD FOREIGN KEY (bicikl) REFERENCES bicikl (serviser);
ALTER TABLE radniNalog ADD FOREIGN KEY (uslugaServisa) REFERENCES uslugaServisa (sifra);