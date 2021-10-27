CREATE DATABASE AJYKQ3
CREATE TABLE GYARTO (
    adoszam int PRIMARY KEY,
    nev char(30),
    telephely char(30),
    irsz int(4),
    varos char(40),
    utca char(100)
);
    
CREATE TABLE TERMEK (
    tkod int PRIMARY KEY,
    nev char(50),
    ear int CHECK (ear>0),
    gyarto int,
    FOREIGN KEY (gyarto) REFERENCES GYARTO(adoszam)
);

CREATE TABLE Alkatresz (
    akod int PRIMARY KEY,
    nev char(50)
);

CREATE TABLE Komponens (
    termek char(50),
    alkatresz int;
    FOREIGN KEY (termek) REFERENCES TERMEK(nev),
    FOREIGN KEY (alkatresz) REFERENCES Alkatresz(akod)
);

CREATE TABLE Egysegek (
    aru int PRIMARY KEY,
    db int CHECK (db>0)
);