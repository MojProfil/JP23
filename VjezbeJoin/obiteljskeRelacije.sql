CREATE TABLE sestra (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	introvertno bit,
	haljina varchar(31) NOT NULL,
	maraka decimal(16,6),
	hlace varchar(46) NOT NULL,
	narukvica int NOT null
);

CREATE TABLE zena (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	treciputa datetime,
	hlace varchar(46),
	kratkamajica varchar(31) NOT null,
	jmbag char(11) NOT null,
	bojaociju varchar(39) NOT NULL,
	haljina varchar(44),
	sestra int NOT null
);

CREATE TABLE muskarac(
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bojaociju varchar(50) NOT NULL,
	hlace varchar(30),
	modelnaocala varchar(43),
	maraka decimal(14,5) NOT NULL,
	zena int NOT null
);

CREATE TABLE mladic(
	sifra int NOT NULL PRIMARY key AUTO_INCREMENT,
	suknja varchar(50) NOT NULL, 
	kuna decimal(16,8) NOT NULL,
	drugiputa datetime,
	asocijalno bit,
	ekstrovertno bit NOT NULL,
	dukserica varchar(48) NOT NULL,
	muskarac int
);

CREATE TABLE svekar (
	sifra int NOT NULL PRIMARY key AUTO_INCREMENT,
	bojaociju varchar(40) NOT NULL,
	prstena int,
	dukserica varchar(41),
	lipa decimal(13,8),
	eura decimal(12,7),
	majica varchar(35)
);

CREATE TABLE sestra_svekar (
	sifra int PRIMARY KEY AUTO_INCREMENT,
	sestra int NOT NULL,
	svekar int NOT null
);

CREATE TABLE punac (
	sifra int NOT NULL PRIMARY key AUTO_INCREMENT,
	ogrlica int, 
	gustoca decimal(14,9),
	hlace varchar(41) NOT null
);

CREATE TABLE cura (
	sifra int NOT NULL PRIMARY key AUTO_INCREMENT,
	novcica decimal (16,5),
	gustoca decimal (18,6),
	lipa decimal (13,10),
	ogrlica int NOT NULL,
	bojakosa varchar(38),
	suknja varchar(36),
	punac int
);


ALTER TABLE zena ADD FOREIGN KEY (sestra) REFERENCES sestra(sifra);
ALTER TABLE muskarac ADD FOREIGN KEY (zena) REFERENCES zena(sifra);
ALTER TABLE mladic ADD FOREIGN KEY (muskarac) REFERENCES muskarac(sifra);
ALTER TABLE sestra_svekar ADD FOREIGN KEY (sestra) REFERENCES sestra(sifra);
ALTER TABLE sestra_svekar ADD FOREIGN KEY (svekar) REFERENCES svekar(sifra);
ALTER TABLE cura ADD FOREIGN KEY (punac) REFERENCES punac(sifra);


INSERT INTO sestra (haljina, hlace, narukvica) VALUES
('halj', 'hlac1', 10),
('halj2', 'hlac2', 20),
('halj3', 'hlac3', 30);

INSERT INTO svekar (bojaociju) VALUES
('color1'),
('color2'),
('color3');

INSERT INTO sestra_svekar (sestra,svekar) VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO zena (sifra, kratkamajica, jmbag, bojaociju, sestra) VALUES
(NULL, 'bijela1', '11445588779', 'smeđa1', 1),
(NULL, 'bijela2', '11448798779', 'smeđa2', 2),
(NULL, 'bijela3', '11412122779', 'smeđa3', 3);

INSERT INTO muskarac (sifra, bojaociju, maraka, hlace, zena) VALUES
(NULL, 'crna', 156.47, 'plave traperice', 1),
(NULL, 'plava', 15.47, 'crne traperice', 2),
(NULL, 'crna', 88.55, 'žute samterice', 3);

UPDATE cura SET gustoca = 15.78;

DELETE FROM mladic 
WHERE kuna > 15.78;

SELECT kratkamajica FROM zena 
WHERE hlace LIKE '%ana%';

SELECT *
FROM svekar sv 
INNER JOIN sestra_svekar ss ON ss.svekar = sv.sifra 
INNER JOIN sestra se ON se.sifra = ss.sestra 
INNER JOIN zena ze ON ze.sestra = se.sifra 
INNER JOIN muskarac mu ON mu.zena = ze.sifra 
INNER JOIN mladic ml ON ml.muskarac = mu.sifra
WHERE ze.hlace LIKE 'a%' OR se.haljina like '%ba%';

# 46 minuta
