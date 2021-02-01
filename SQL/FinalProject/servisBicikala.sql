drop database if exists radniNalog;
create database radniNalog CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci;
use radniNalog;

CREATE TABLE stranka(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ime varchar(50) NOT null,
	prezime varchar(50) NOT null,
	email varchar(50),
	mobitel varchar(50) NOT null
);

CREATE TABLE vozilo(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	stranka int NOT NULL,
	proizvodac varchar(50),
	model varchar(50),
	godinaProizvodnje char(4)
);

CREATE TABLE stavkeRobaUsluga(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	kolicinaRoba int NOT NULL,
	kolicinaUsluga int NOT NULL
);

CREATE TABLE radniNalog (
	 sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	 stavkeRobaUsluga int NOT NULL,
	 stranka int NOT NULL,
	 vozilo int NOT NULL,
	 datumZaprimanja datetime DEFAULT now(),
	 datumIzdavanja datetime
);


ALTER TABLE vozilo ADD FOREIGN KEY (stranka) REFERENCES stranka (sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (stavkerobausluga) REFERENCES stavkerobausluga (sifra);
ALTER TABLE radninalog ADD FOREIGN KEY (stranka) REFERENCES stranka (sifra);
ALTER TABLE radniNalog ADD FOREIGN KEY (vozilo) REFERENCES vozilo (sifra);


SELECT 
FROM 