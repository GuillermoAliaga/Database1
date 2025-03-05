DROP DATABASE IF EXISTS crupier;
CREATE DATABASE crupier;
USE crupier;
CREATE TABLE actcrupier(
ID_crup INTEGER PRIMARY KEY NOT NULL,
engano FLOAT,
trampa FLOAT
)ENGINE = InnoDB;
CREATE TABLE sala(
ID_sala INTEGER PRIMARY KEY NOT NULL,
ID_crup INTEGER PRIMARY KEY NOT NULL,
numjug INTEGER
)ENGINE = InnoDB;
CREATE TABLE t1-t3(
actcrupier INTEGER NOT NULL,
sala INTEGER NOT NULL,
FOREIGN KEY (actcrupier) REFERENCES actcrupier(ID_crup),
FOREIGN KEY (sala) REFERENCES sala(ID_crup)
)ENGINE = InnoDB;

INSERT INTO actcrupier VALUES (1,23.1,58.3);
INSERT INTO actcrupier VALUES (2,79.8,5);
INSERT INTO sala VALUES (1,3,2);
INSERT INTO sala VALUES (2,1,5);
INSERT INTO t1-t3 VALUES (1,1);
INSERT INTO t1-t3 VALUES (2,2);
