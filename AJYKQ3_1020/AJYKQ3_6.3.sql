CREATE DATABASE AJYKQ3
CREATE TABLE Tanfolyam (
    tkod int PRIMARY KEY,
    ar int,
    tipus char,
    negnevezes char
);

CREATE TABLE Resztvevo (
    tajszam int PRIMARY KEY,
    nev char,
    lakcim char
);

CREATE TABLE Tan_Resz (
    tkod int,
    tajszam int,
    befizetes int,
    FOREIGN KEY (tkod) REFERENCES Tanfolyam(tkod)
    FOREIGN KEY (tajszam) REFERENCES Resztvevo(tajszam)
)