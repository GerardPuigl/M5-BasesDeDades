CREATE DATABASE  IF NOT EXISTS  m5_exercici2_quadres;
USE  m5_exercici2_quadres;

DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS quadres;

CREATE TABLE quadres (
    id_quadre INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_quadre),
    autor VARCHAR (100),
    preu INT
    );


CREATE TABLE clients (
    id_client INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_client),
    nom VARCHAR (30),
    cognom VARCHAR (30),
	dni INT (10),
    id_quadrecomprat INT,
    FOREIGN KEY (id_quadrecomprat) REFERENCES quadres(id_quadre)
);


INSERT INTO quadres (autor, preu) VALUES ("Picaso", 300000);
INSERT INTO quadres (autor, preu) VALUES ("Picaso", 300000);
INSERT INTO quadres (autor, preu) VALUES ("Picaso", 300000);
INSERT INTO quadres (autor, preu) VALUES ("Picaso", 300000);

UPDATE quadres SET autor= "Rembran", preu= 500000  WHERE id_quadre=2 ;

DELETE FROM quadres WHERE id_quadre BETWEEN 3 AND 4;

INSERT INTO quadres (autor, preu) VALUES ("Van Goch", 1100000);
INSERT INTO quadres (autor, preu) VALUES ("Velazquez", 800000);
INSERT INTO quadres (autor, preu) VALUES ("Miro", 250000);
INSERT INTO quadres (autor, preu) VALUES ("Monet", 2000000);
INSERT INTO quadres (autor, preu) VALUES ("Anònim", 10000);
INSERT INTO quadres (autor, preu) VALUES ("Anònim", 2000);

INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Maria", "Garcia", 1);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Maria", "Garcia", 2);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Maria", "Garcia", 6);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Marcos", "Zamora", 5);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Marcos", "Zamora", 8);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Pol", "Artiga", 10);
INSERT INTO clients (nom, cognom,id_quadrecomprat) VALUES ("Jordi", "Martinez", 7);

SELECT * FROM quadres INNER JOIN clients ON quadres.id_quadre = clients.id_quadrecomprat;