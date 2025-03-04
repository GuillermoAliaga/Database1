DROP DATABASE IF EXISTS crupier;
CREATE DATABASE crupier;
USE crupier;
CREATE TABLE actcrupier(
ID_crup integer primary key not null,
engano FLOAT,
trampa FLOAT
);
INSERT INTO actcrupier(ID_crup,engano,trampa)VALUES(1,23.1,58.3);
INSERT INTO actcrupier(ID_crup,engano,trampa)VALUES(2,79.8,5);