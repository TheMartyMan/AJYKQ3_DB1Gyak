CREATE DATABASE AJYKQ3;
USE AJYKQ3;
CREATE TABLE termekek (tkod INT PRIMARY KEY, nev VARCHAR(50) NOT NULL, ear INT CHECK (EAR > 0), kategoria CHAR(20));
INSERT INTO termekek VALUES(0,'?s?',1500,'k1');
INSERT INTO termekek VALUES(1,'kapa',2000,'k2');
INSERT INTO termekek VALUES(2,'harang',2500,'k3');
DELETE FROM termekek WHERE ear < 1500;
UPDATE termekek SET ear = ear*0.9 WHERE kategoria = 'Y';