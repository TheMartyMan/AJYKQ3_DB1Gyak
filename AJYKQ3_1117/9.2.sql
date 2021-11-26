CREATE DATABASE AJYKQ3;
USE AJYKQ3;
CREATE TABLE RESZTVEVO(tajszám INT, név CHAR(30) not null, lakcím CHAR(40), PRIMARY KEY(tajszám));
CREATE TABLE BEFIZETES(tanfolyamok INT REFERENCES TANFOLYAM, resztvevok INT REFERENCES RESZTVEVO, befizetes INT);
CREATE TABLE TANFOLYAM(tkód INT, ár INT check(ÁR>0), tipus CHAR(30), megnevezés CHAR(30), PRIMARY KEY(tkód));



insert into tanfolyam values(0,120000,"egyetem","analízis");
insert into tanfolyam values(1,50000,"középiskola","biológia");
insert into tanfolyam values(2,25000,"általános","történelem");
insert into tanfolyam values(3,150000,"egyetem","adatbázisrendszerek");



insert into resztvevo values(111222333, "Kiss Pista", "Budapest");
insert into resztvevo values(000111222, "Tóth Tibor", "Miskolc");
insert into resztvevo values(010102020, "Balogh Rebeka", NULL);
insert into resztvevo values(222333444, "Nagy Gergő", NULL);



insert into befizetes values(0,222333444,10000);
insert into befizetes values(3,000111222,15000);
insert into befizetes values(0,111222333,10000);
insert into befizetes values(2,010102020,2500);
insert into befizetes values(1,111222333,2500);



SELECT tipus, AVG(ár), MAX(ár) - MIN(ár) FROM tanfolyam GROUP BY tipus;
SELECT megnevezés, CASE WHEN ár > 100000 THEN "drága" ELSE "olcsó" END arkategoria FROM tanfolyam;
CREATE VIEW tdb AS SELECT MAX(t.megnevezés) név, COUNT(*) db FROM tanfolyam t INNER JOIN befizetes b ON b.tanfolyamok = t.tkód GROUP BY t.tkód;
SELECT név, CASE WHEN db > 10 THEN "népszerű" ELSE "nem népszerű" END résztvevők FROM tdb;