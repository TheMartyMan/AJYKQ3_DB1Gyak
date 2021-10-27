CREATE DATABASE AJYKQ3
CREATE TABLE termekek (
    tkod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    ear INT CHECK (EAR > 0),
    kategoria CHAR(20)
);

INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES(1, "lapát", 2000, "K1");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES(2, "seprű", 4000, "K2");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES(3, "mosogató gél", 1500, "K3");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES(4, "szappan", 1000, "K4");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES(5, "pohár", 2400, "K5");

INSERT INTO termekek VALUES (1 5, 'pohár A', '20','K3'); // hibás szám
INSERT INTO termekek VALUES (1 ,'lapát', 2000,'K1'); // ez lézető kulcs
INSERT INTO termekek VALUES (15, 'pohár A', O,'K3'); // hibás ár
INSERT INTO termekek VALUES (8, NULL, 4000, 'K1'); // hibás név;
INSERT INTO termekek VALUES (1 5, "pohár A", 20,'K3'); // hibás szöveg konstans