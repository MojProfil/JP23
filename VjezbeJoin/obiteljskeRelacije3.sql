 USE obiteljskeRelacije3;

CREATE TABLE cura (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	dukserica varchar(49),
	maraka decimal(13,7),
	drugiputa datetime,
	majica varchar(49),
	novcica decimal(15,8),
	ogrlica int NOT null
);

CREATE TABLE svekar (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	novcica decimal(16,8) NOT NULL,
	suknja varchar(44) NOT NULL,
	bojakosa varchar(36),
	prstena int,
	narukvica int NOT NULL,
	cura int NOT null
);


CREATE TABLE brat (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	jmbag char(11),
	ogrlica int NOT NULL,
	ekstrovertno bit NOT null
);

CREATE TABLE prijatelj (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	kuna decimal(16,10),
	haljina varchar(37),
	lipa decimal(13,10),
	dukserica varchar(31),
	indiferentno bit NOT NULL
);

CREATE TABLE prijatelj_brat (
	sifra int NOT NULL PRIMARY KEY auto_increment,
	brat int NOT NULL,
	prijatelj int NOT NULL
);

CREATE TABLE ostavljena (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	kuna decimal(17,5),
	lipa decimal(15,6),
	majica varchar(36),
	modelnaocala varchar(31) NOT NULL,
	prijatelj int
);

CREATE TABLE snaha (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	introvertno bit,
	kuna decimal(15,6) NOT NULL,
	eura decimal(12,9) NOT NULL,
	treciputa datetime,
	ostavljena int NOT null
);

CREATE TABLE punica (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	asocijalno bit,
	kratkamajica varchar(44),
	kuna decimal(13,8) NOT null,
	vesta varchar(32) NOT NULL,
	snaha int
);

# 8min

ALTER TABLE svekar ADD FOREIGN KEY (cura) REFERENCES cura (sifra);
ALTER TABLE prijatelj_brat ADD FOREIGN KEY (brat) REFERENCES brat (sifra);
ALTER TABLE prijatelj_brat ADD FOREIGN KEY (prijatelj) REFERENCES prijatelj (sifra);
ALTER TABLE ostavljena ADD FOREIGN KEY (prijatelj) REFERENCES prijatelj (sifra);
ALTER TABLE snaha ADD FOREIGN KEY (ostavljena) REFERENCES ostavljena (sifra);
ALTER TABLE punica ADD FOREIGN KEY (snaha) REFERENCES snaha (sifra);


INSERT INTO ostavljena (sifra, modelnaocala) VALUES
(NULL, 'rayban'),
(NULL, 'oakley'),
(NULL, 'naocale3');

INSERT INTO snaha (sifra, kuna, eura, ostavljena) VALUES 
(NULL, 11.22, 22.11, 1),
(NULL, 25.46, 77.44, 3),
(NULL, 15.64, 75.45, 2);

INSERT INTO prijatelj (sifra, indiferentno) VALUES
(NULL, 1),
(NULL, 0),
(NULL, 1);

INSERT INTO brat (sifra, ogrlica, ekstrovertno) VALUES
(NULL, 5, 1),
(NULL, 8, 0),
(NULL, 7, 1);

INSERT INTO prijatelj_brat (sifra, prijatelj, brat) VALUES
(NULL, 1, 1),
(NULL, 2, 2),
(NULL, 3, 3);

INSERT INTO cura (sifra, ogrlica) VALUES
(NULL, 1);

INSERT INTO svekar (sifra, novcica, suknja, narukvica, cura) VALUES
(NULL, 11.52, 'bijela', 1, 1),
(NULL, 15.43, 'bijela2', 2, 1),
(NULL, 11.52, 'bijela3', 4, 1);


UPDATE svekar SET suknja = 'Osijek';

DELETE FROM punica 
WHERE kratkamajica = 'AB';

SELECT majica FROM ostavljena WHERE 
lipa != 9 AND lipa != 10 AND lipa != 20 AND lipa != 30 AND lipa != 35;

SELECT br.ekstrovertno, pu.vesta, sn.kuna
FROM brat br
INNER JOIN prijatelj_brat pb ON pb.brat = brat.sifra 
INNER JOIN prijatelj pr ON pr.sifra = pb.prijatelj 
INNER JOIN ostavljena os ON os.prijatelj = pr.sifra 
INNER JOIN snaha sn ON sn.ostavljena = ostavljena.sifra 
INNER JOIN punica pu ON pu.snaha = snaha.sifra
WHERE os.lipa != 91 AND pr.haljina LIKE '%ba';

SELECT pr.haljina, pr.lipa 
FROM prijatelj pr
INNER JOIN prijatelj_brat pb ON pb.prijatelj = pr.sifra
WHERE pb.sifra = NULL;


