CREATE DATABASE bazaoshop;
USE bazaoshop;

CREATE TABLE kategorija (
	kategorija_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	naziv TEXT NOT NULL);

CREATE TABLE  poslovnica (
	poslovnica_id	INTEGER PRIMARY KEY,
	lokacija	TEXT NOT NULL);
    
CREATE TABLE  artikal (
	artikal_id	INTEGER PRIMARY KEY,
    poslovnica_id INTEGER,
	naziv	TEXT,
	cijena	TEXT,
	kategorija_id INTEGER,
	broj_mjeseci_garancije INTEGER,
    FOREIGN KEY (kategorija_id) REFERENCES kategorija (kategorija_id),
    FOREIGN KEY (poslovnica_id) REFERENCES poslovnica (poslovnica_id));
    
    
CREATE TABLE kolicina (
	kolicina_id	INTEGER PRIMARY KEY,
	artikal_id	INTEGER,
	kolicina_proizvoda	INTEGER,
	FOREIGN KEY(artikal_id) REFERENCES artikal (artikal_id));
    
CREATE TABLE zaposlenici (
	zaposlenik_id INTEGER PRIMARY KEY,
    poslovnica_id INTEGER,
	ugovor_id	INTEGER,
	ime varchar(45),
    prezime varchar(45),
    jmbg INTEGER,
    datum_rodjenja DATE,
    telefon VARCHAR(45),
    email varchar(45),
	FOREIGN KEY(poslovnica_id) REFERENCES poslovnica (poslovnica_id),
    FOREIGN KEY(ugovor_id) REFERENCES ugovor (ugovor_id));
    
CREATE TABLE ugovor (
	ugovor_id	INTEGER PRIMARY KEY,
	plata	INTEGER,
	datum_zaposlenja DATE,
    broj_racuna INT);
    
    
    
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('1','Mobiteli');
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('2','Laptopi');
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('3','Televizori');
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('4','Fotoaparati');
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('5','Konzole');
INSERT INTO kategorija (kategorija_id,naziv) VALUES ('6','Kucanski aparati');

INSERT INTO poslovnica VALUES (1,'Sarajevo');
INSERT INTO poslovnica VALUES (2,'Tuzla');
INSERT INTO poslovnica VALUES (3,'Mostar');

INSERT INTO artikal VALUES (1,1,'Iphone 11','1300',1,24);
INSERT INTO artikal VALUES (2,1,'Iphone 11 Pro','1500',1,24);
INSERT INTO artikal VALUES (3,1,'Iphone 11 Pro Max','2000',1,24);
INSERT INTO artikal VALUES (4,3,'Samsung Galaxy S20','1300',1,12);
INSERT INTO artikal VALUES (5,1,'Samsung Galaxy S20+','1500',1,12);
INSERT INTO artikal VALUES (6,1,'Samsung Galaxy Note 10','1000',1,12);
INSERT INTO artikal VALUES (7,1,'Samsung Galaxy A51','400',1,12);
INSERT INTO artikal VALUES (8,1,'Huawei Mate 40 Pro','2000',1,12);
INSERT INTO artikal VALUES (9,1,'Huawei P30 Pro','1200',1,12);
INSERT INTO artikal VALUES (10,2,'Xiaomi Mi 10 Lite 5G','650',1,6);
INSERT INTO artikal VALUES (11,1,'Xiaomi Redmi 9C','500',1,6);

INSERT INTO artikal VALUES (12,2,'Apple MacBook Air 13.3-ich','3050',2,24);
INSERT INTO artikal VALUES (13,2,'Apple MacBook Pro 15','5900',2,24);
INSERT INTO artikal VALUES (14,2,'Acer Aspire A315','839',2,12);
INSERT INTO artikal VALUES (15,3,'Dell Inspiron 3593','1300',2,24);
INSERT INTO artikal VALUES (16,1,'HP 250 G7','900',2,12);
INSERT INTO artikal VALUES (17,1,'ASUS ZenBook','2000',2,12);

INSERT INTO artikal VALUES (18,3,'Tesla (40T319SFS)','440',3,24);
INSERT INTO artikal VALUES (19,3,'Panasonic TV TX-40DS630E','1000',3,24);
INSERT INTO artikal VALUES (20,3,'Samsung TV QE65Q80TATXXH','3050',3,24);
INSERT INTO artikal VALUES (21,3,'Samsung TV UE65TU7172UXXH','1500',3,24);
INSERT INTO artikal VALUES (22,1,'TV PHILIPS 55','3050',3,24);

INSERT INTO artikal VALUES (23,2,'NIKON D5600 AF-S','1500',4,24);
INSERT INTO artikal VALUES (24,1,'Canon EOS M50 WH','2200',4,24);
INSERT INTO artikal VALUES (25,3,'Canon Powershot G7x Mark II','1000',4,24);
INSERT INTO artikal VALUES (26,3,'Panasonic Lumix DMC-GF5','600',4,24);
INSERT INTO artikal VALUES (27,1,'Nikon COOLPIX P1000','1900',4,24);

INSERT INTO artikal VALUES (28,1,'PlayStation 5','1099',5,12);
INSERT INTO artikal VALUES (29,1,'PlayStation 4','700',5,12);
INSERT INTO artikal VALUES (30,3,'Xbox Series X','900',5,12);
INSERT INTO artikal VALUES (31,2,'Nintendo Wii U','1000',5,12);

INSERT INTO artikal VALUES (32,2,'Gorenje frizider RF 4141 ANW','400',6,24);
INSERT INTO artikal VALUES (33,2,'Samsung frizider RS68N8240B1/EF','2000',6,24);
INSERT INTO artikal VALUES (34,3,'Elektricna pecnica Electrolux (EZF5C50Z)','500',6,24);
INSERT INTO artikal VALUES (35,2,'Samsung pecnica (NV75K5571RS/OL)','1200',6,12);
INSERT INTO artikal VALUES (36,1,'Ves masina Candy AQUA','500',6,12);
INSERT INTO artikal VALUES (37,1,'VOX WM 1275-YTQ masina za ves','550',6,12);
INSERT INTO artikal VALUES (38,3,'Mikrovalna Candy CMG 2071M','130',6,12);
INSERT INTO artikal VALUES (39,2,'Samsung mikrovalna pecnica MS23F301TAS','200',6,12);
INSERT INTO artikal VALUES (40,2,'TESLA mikrovalna MW2060MS','250',6,12);

INSERT INTO kolicina VALUES (1,1,5);
COMMIT;
 
select artikal_id as Artikal, kolicina_proizvoda from kolicina where kolicina_proizvoda=5;
select * from artikal;
