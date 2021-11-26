CREATE DATABASE AJYKQ3;
USE AJYKQ3;

CREATE TABLE TULAJDONOS(
tkod INT PRIMARY KEY,
nev VARCHAR(20) NOT NULL,
varos CHAR(20));

insert into TULAJDONOS Values(101,'Kis János','Miskolc');
insert into TULAJDONOS Values(103,'Retek Ödön','Miskolc');
insert into TULAJDONOS Values(104,'Virág Zoltán','Nyék');
insert into TULAJDONOS Values(102,'Kis Éva','Szerencs');
insert into TULAJDONOS Values(105,'Nagy Eszter','Nyék');
insert into TULAJDONOS Values(106,'Kovács Magor','Szerencs');
insert into TULAJDONOS Values(107,'Asztal Antal','Miskolc');



CREATE table auto(
rendszam CHAR(7) PRIMARY KEY,
tipus VARCHAR(25) NOT NULL,
szin VARCHAR(15), kor INT,
ar INT,
tulaj INT,
FOREIGN KEY(tulaj) references TULAJDONOS(tkod) );



insert into auto VALUES('JAH-425','Skoda Fabia','Piros',13,620,102);
insert into auto VALUES('MLM-211','Toyota Yaris','Fehér',3,1850,105);
insert into auto VALUES('FER-831','Opel Corsa','Piros',18,390,101);
insert into auto VALUES('IXL-239','Suzuki Swift','Zöld',15,450,105)
insert into auto VALUES('JCD-443','Opel Astra','Fehér',12,990,107);;
insert into auto VALUES('KAP-290','BMW 316','Fekete',6,3250,102);
insert into auto VALUES('KFT-204','Opel Astra','Szürke',7,1250,106);
insert into auto VALUES('GDF-525','Renault Twingo','Fekete',16,280,NULL);
insert into auto VALUES('HUB-936','Suzuki Swift','Fekete',16,500,NULL);


SELECT rendszam,tipus,szin,kor,ar,tulaj FROM auto, TULAJDONOS WHERE varos = "Miskolc" AND tulaj = tkod;
SELECT rendszam,nev FROM auto, TULAJDONOS WHERE tulaj = tkod;
SELECT tipus, ar, szin FROM auto;
SELECT nev, rendszam FROM tulajdonos RIGHT OUTER JOIN auto ON tkod = tulaj;
SELECT nev, rendszam FROM auto RIGHT OUTER JOIN TULAJDONOS ON tkod = tulaj;
SELECT rendszam FROM auto, TULAJDONOS WHERE  ar > (SELECT AVG(ar) FROM auto, TULAJDONOS WHERE varos = "Miskolc") AND NOT varos="Miskolc" GROUP BY rendszam;
SELECT a1.rendszam FROM auto a1, auto a2 WHERE a1.tipus=a2.tipus AND a1.kor>a2.kor AND a1.ar>a2.ar; 
SELECT * FROM auto WHERE  ar < (SELECT MIN(ar) FROM auto WHERE szin = "piros") GROUP BY rendszam;
SELECT nev FROM TULAJDONOS, auto WHERE tkod = tulaj group by nev;
SELECT * FROM auto WHERE  ar < (SELECT MIN(ar) FROM auto WHERE szin = "piros") GROUP BY rendszam;
SELECT nev FROM TULAJDONOS WHERE NOT EXISTS (SELECT nev FROM auto WHERE Tulaj=tkod);