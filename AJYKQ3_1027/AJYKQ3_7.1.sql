CREATE DATABASE AJYKQ3;
USE AJYKQ3;
CREATE TABLE termekek (tkod INT PRIMARY KEY, nev VARCHAR(50) NOT NULL, ear INT CHECK (EAR > 0), kategoria CHAR(20)); 
INSERT INTO termekek VALUES(0, 'billentyűzet', 5000, 'elektronika');
INSERT INTO termekek VALUES(1, 'ásó', 2000, 'kertészet');
INSERT INTO termekek VALUES(2, 'lámpa', 3000, 'elektronika');
INSERT INTO termekek VALUES(3, 'monitor', 15000, 'elektronika');
INSERT INTO termekek VALUES(4, 'szőnyeg', 10000, 'egyéb');
