USE obiteljskeRelacije2;

CREATE TABLE svekar (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	stilfrizuta varchar(48),
	ogrlica int NOT null,
	asocijalno bit NOT null
);

CREATE TABLE prijatelj (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	modelnaocala varchar (37),
	treciputa datetime NOT null,
	ekstrovertno bit NOT null,
	prviputa datetime,
	svekar int NOT null
);

CREATE TABLE zarucnica (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	narukvica int,
	bojakose varchar (37) NOT NULL,
	novcica decimal (15,9),
	lipa decimal (15,8) NOT null,
	indiferentno bit NOT null
);

CREATE TABLE decko_zarucnica (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	decko int NOT NULL,
	zarucnica int NOT null
);

CREATE TABLE decko (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	indiferentno bit,
	vesta varchar(34),
	asocijalno bit NOT null
);
CREATE TABLE cura (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	haljina varchar(33) NOT NULL,
	drugiputa datetime NOT NULL,
	suknja varchar(38),
	narukvica int,
	introvertno bit,
	majica varchar(43) NOT NULL,
	decko int
);

CREATE TABLE neprijatelj (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	majica varchar(32),
	haljina varchar(43) NOT NULL,
	lipa decimal(16,8),
	modelnaocala varchar(48) NOT NULL,
	kuna decimal(12,6) NOT NULL,
	jmbag char(11),
	cura int
);

CREATE TABLE brat (
	sifra int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	suknja varchar(47),
	ogrlica int NOT NULL,
	asocijalno bit NOT NULL,
	neprijatelj int NOT null
);

# 7 min

ALTER TABLE prijatelj ADD FOREIGN KEY (svekar) REFERENCES svekar (sifra);
ALTER TABLE decko_zarucnica ADD FOREIGN KEY (decko) REFERENCES decko (sifra);
ALTER TABLE decko_zarucnica ADD FOREIGN KEY (zarucnica) REFERENCES zarucnica (sifra);
ALTER TABLE cura ADD FOREIGN KEY (decko) REFERENCES decko (sifra);
ALTER TABLE neprijatelj ADD FOREIGN KEY (cura) REFERENCES cura (sifra);
ALTER TABLE brat ADD FOREIGN KEY (neprijatelj) REFERENCES neprijatelj (sifra);

# 4 min

INSERT INTO neprijatelj (sifra, haljina, modelnaocala, kuna) VALUES
(NULL, 'haljina1', 'naocale1', 156),
(NULL, 'haljina2', 'naocale2', 96),
(NULL, 'haljina3', 'naocale3', 50);

INSERT INTO cura (sifra, haljina, drugiputa, majica) VALUES
(NULL, 'haljinacura1', '2020-10-01', 'majicacura1'),
(NULL, 'haljinacura2', '2001-01-01', 'majicacura2'),
(NULL, 'haljinacura3', '2010-07-12', 'majicacura3');

INSERT INTO decko (sifra, asocijalno) VALUES
(NULL, 1),
(NULL, 0),
(NULL, 1);

INSERT INTO zarucnica (sifra, bojakose, lipa, indiferentno) VALUES
(NULL, 'kosa1', 15.22, 1),
(NULL, 'kosa2', 11.88, 0),
(NULL, 'kosa3', 12.33, 1);

INSERT INTO decko_zarucnica (sifra, decko, zarucnica) VALUES
(NULL, 1,1),
(NULL, 2,2),
(NULL, 3,3);

# 10min

INSERT INTO svekar (sifra, ogrlica, asocijalno) VALUES
(NULL, 1, 0);

INSERT into prijatelj (sifra, treciputa, ekstrovertno, svekar) VALUES
(NULL, '1987-10-10', 1, 1),
(NULL, '2020-12-12', 0, 1),
(NULL, '1950-02-05', 1, 1);

UPDATE prijatelj SET 
treciputa = '2020-04-30';

DELETE FROM brat 
WHERE ogrlica != 14;

SELECT suknja FROM cura 
WHERE drugiputa IS NULL;

SELECT z.novcica, br.neprijatelj, ne.haljina
FROM zarucnica z 
INNER JOIN decko_zarucnica dz ON dz.zarucnica = z.sifra
INNER JOIN decko de ON de.sifra = dz.decko 
INNER JOIN cura cu ON cu.decko = de.sifra 
INNER JOIN neprijatelj ne ON ne.cura = cu.sifra 
INNER JOIN brat br ON br.neprijatelj = ne.sifra
WHERE cu.drugiputa IS NOT NULL AND de.vesta LIKE '%ba%';

SELECT de.vesta, de.asocijalno 
FROM decko de
INNER JOIN decko_zarucnica dz ON de.sifra = dz.decko 
WHERE dz.decko = NULL;

#30min