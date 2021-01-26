CREATE DATABASE  IF NOT EXISTS m5_exercici1_Vueling;
USE m5_exercici1_Vueling;

DROP TABLE IF EXISTS seients;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS avions;

CREATE TABLE avions (
    id_avio INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_avio),
    capacitat INT,
    model VARCHAR (6)
    );


CREATE TABLE clients (
    id_client INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_client),
    nom VARCHAR (30),
    cognom VARCHAR (30)
    );
    

CREATE TABLE seients (
    id_seient INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_seient),
    id_client INT,
    id_avio INT,
    FOREIGN KEY (id_client) REFERENCES clients(id_client),
    FOREIGN KEY (id_avio) REFERENCES avions(id_avio)
    );


INSERT INTO avions (capacitat, model) VALUES (20, "AIR650");
INSERT INTO avions (capacitat, model) VALUES (18, "AIR600");
INSERT INTO avions (capacitat, model) VALUES (25, "AIR725");
INSERT INTO avions (capacitat, model) VALUES (18, "AIR620");
INSERT INTO avions (capacitat, model) VALUES (18, "AIR620");
INSERT INTO avions (capacitat, model) VALUES (20, "AIR650");

INSERT INTO clients (nom, cognom) VALUES ("MARIA","ARNAL");
INSERT INTO clients (nom, cognom) VALUES ("PEP","SALA");
INSERT INTO clients (nom, cognom) VALUES ("PEP","GUARDIOLA");
INSERT INTO clients (nom, cognom) VALUES ("MARC","MARQUEZ");
INSERT INTO clients (nom, cognom) VALUES ("HILLARY","CLINTON");
INSERT INTO clients (nom, cognom) VALUES ("BILL","CLINTON");

INSERT INTO seients (id_client,id_avio) VALUES (1,1);
INSERT INTO seients (id_client,id_avio) VALUES (2,1);
INSERT INTO seients (id_client,id_avio) VALUES (3,1);
INSERT INTO seients (id_client,id_avio) VALUES (4,2);
INSERT INTO seients (id_client,id_avio) VALUES (5,2);
INSERT INTO seients (id_client,id_avio) VALUES (6,2);
INSERT INTO seients (id_client,id_avio) VALUES (1,5);
INSERT INTO seients (id_client,id_avio) VALUES (2,3);
INSERT INTO seients (id_client,id_avio) VALUES (3,4);
INSERT INTO seients (id_client,id_avio) VALUES (4,6);
INSERT INTO seients (id_client,id_avio) VALUES (5,4);
INSERT INTO seients (id_client,id_avio) VALUES (6,4);

SELECT avions.id_avio, avions.model, clients.nom, clients.cognom FROM avions
INNER JOIN seients ON avions.id_avio = seients.id_avio
INNER JOIN clients ON seients.id_client = clients.id_client;