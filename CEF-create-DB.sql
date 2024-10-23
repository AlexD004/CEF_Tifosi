CREATE DATABASE IF NOT EXISTS Tifosi;

CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'tifosiCEF75?*49';

CREATE TABLE IF NOT EXISTS Tifosi.client(
   id_client INT AUTO_INCREMENT,
   nom_client VARCHAR(45) NOT NULL,
   age INT NOT NULL,
   cp_client INT NOT NULL,
   PRIMARY KEY(id_client)
);

CREATE TABLE IF NOT EXISTS Tifosi.focaccia(
   id_focaccia INT AUTO_INCREMENT,
   nom_focaccia VARCHAR(45) NOT NULL,
   prix_focaccia FLOAT NOT NULL,
   PRIMARY KEY(id_focaccia),
   UNIQUE(nom_focaccia)
);

CREATE TABLE IF NOT EXISTS Tifosi.ingredient(
   id_ingredient INT AUTO_INCREMENT,
   nom_ingredient VARCHAR(45) NOT NULL,
   PRIMARY KEY(id_ingredient),
   UNIQUE(nom_ingredient)
);

CREATE TABLE IF NOT EXISTS Tifosi.menu(
   id_menu INT AUTO_INCREMENT,
   nom_menu VARCHAR(45) NOT NULL,
   prix_menu FLOAT NOT NULL,
   id_focaccia INT NOT NULL,
   PRIMARY KEY(id_menu),
   UNIQUE(nom_menu),
   FOREIGN KEY(id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE IF NOT EXISTS Tifosi.marque(
   id_marque INT AUTO_INCREMENT,
   nom_marque VARCHAR(45) NOT NULL,
   PRIMARY KEY(id_marque),
   UNIQUE(nom_marque)
);

CREATE TABLE IF NOT EXISTS Tifosi.boisson(
   id_boisson INT AUTO_INCREMENT,
   nom_boisson VARCHAR(45) NOT NULL,
   id_marque INT NOT NULL,
   PRIMARY KEY(id_boisson),
   UNIQUE(nom_boisson),
   FOREIGN KEY(id_marque) REFERENCES marque(id_marque)
);

CREATE TABLE IF NOT EXISTS Tifosi.contient(
   id_menu INT,
   id_boisson INT,
   PRIMARY KEY(id_menu, id_boisson),
   FOREIGN KEY(id_menu) REFERENCES menu(id_menu),
   FOREIGN KEY(id_boisson) REFERENCES boisson(id_boisson)
);

CREATE TABLE IF NOT EXISTS Tifosi.comprend(
   id_focaccia INT,
   id_ingredient INT,
   PRIMARY KEY(id_focaccia, id_ingredient),
   FOREIGN KEY(id_focaccia) REFERENCES focaccia(id_focaccia),
   FOREIGN KEY(id_ingredient) REFERENCES ingrédient(id_ingredient)
);

CREATE TABLE IF NOT EXISTS Tifosi.achete(
   id_client INT,
   id_focaccia INT,
   jour DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
   PRIMARY KEY(id_client, id_focaccia),
   FOREIGN KEY(id_client) REFERENCES Client(id_client),
   FOREIGN KEY(id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE IF NOT EXISTS Tifosi.paye(
   id_client INT,
   id_menu INT,
   jour DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
   PRIMARY KEY(id_client, id_menu),
   FOREIGN KEY(id_client) REFERENCES Client(id_client),
   FOREIGN KEY(id_menu) REFERENCES menu(id_menu)
);