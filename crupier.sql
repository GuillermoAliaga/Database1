DROP DATABASE IF EXISTS crupier;
CREATE DATABASE crupier;
USE crupier;
CREATE TABLE actcrupier(
ID_crup integer primary key not null,
engaño FLOAT,
trampa FLOAT
);
INSERT INTO actcrupier values (1,23.1,58.3);
INSERT INTO actcrupier values (2,79.8,5);