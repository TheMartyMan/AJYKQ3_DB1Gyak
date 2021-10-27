CREATE DATABASE AJYKQ3
CREATE TABLE GYARTO (
    adoszam integer PRIMARY KEY,
    nev varchar(30),
    telephely varchar(30)
);
    
CREATE TABLE TERMEK (
    tkod integer PRIMARY KEY,
    nev varchar(50),
    ear integer check (ear>0),
    gyarto integer,
    foreign key (gyarto) references GYARTO(adoszam)
);