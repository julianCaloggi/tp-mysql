CREATE DATABASE tp;
USE tp;

CREATE TABLE categories (
id INT AUTO_INCREMENT,
PRIMARY KEY (id),
categorie VARCHAR(100) NOT NULL
);

INSERT INTO categories(categorie) 
VALUES('cocina'),("jardineria"),("juegos"),("computadora"),("accion"),
("quimica"),("fisica"),("libros"),("ajedrez"),("juegos de mesa");

CREATE TABLE notas (
id INT AUTO_INCREMENT,
PRIMARY KEY (id),
title VARCHAR(100) NOT NULL,
creation DATE NOT NULL,
descriptions TEXT NOT NULL,
modification DATE NOT NULL,
borrar VARCHAR(10) NOT NULL,
idCategorie INT NOT NULL,
FOREIGN KEY (idCategorie) REFERENCES categories(id)
);

INSERT INTO notas(title,creation,descriptions,modification,borrar,idCategorie) 
VALUES("cocina para novatos","2000-02-02","cocina para novatos","2020-11-22","no",1),
("jardineria para novatos","2010-02-02","crea tu propio jardin","2015-11-22","si",2),
("armado de pc","2000-02-02","arma tu propia computadora","2017-11-22","si",3),
("jugadores profesionales del ajedrez","1970-02-02","los mejores jugadores","2012-11-22","no",4),
("los mejores juegos de mesa","1990-02-02","juegos de mesa para disfrutar en familia","2000-11-22","si",5),
("lista del año de los mejores juegos","2000-02-02","los juegos mas vendidos en el año","2020-11-22","no",6),
("jonh wick","2000-02-02","la pelicula de accio mas vista","2022-11-22","no",7),
("los mejores libros para leer y disdrutar","2000-02-02","disfruta de una buena lectura","2020-11-22","si",8),
("los fisicos mas reconocidos del mundo","2000-02-02","mira la historia de estas grandes mentes","2020-11-22","no",9),
("las reacciones mquimicas mas divertidas","2000-02-02","haz tus pruebas y diviertete","2020-11-22","no",10);

CREATE TABLE users (
id INT AUTO_INCREMENT,
PRIMARY KEY (id),
userName VARCHAR(100) NOT NULL,
email VARCHAR(20) UNIQUE NOT NULL,
idCreateNota INT NOT NULL UNIQUE,
FOREIGN KEY (idCreateNota) REFERENCES notas(id)
);

INSERT INTO users(userName,email,idCreateNota)
VALUES ('Max','Power@hotmail.com',1),("juan","juan@hola.com",2),("pepe","uno_dos@hotmail.com",3),
("manuel","saludos@_99.com",7),("erika","solar@yahoo.com",6),("tomas","tom@98.ar",4),("delfina","bella@gg.er",5),
("matias","matias@hotmal.com",8),("agustina","agus@yahoo.com",9),("pepe","pep@yahoo.com",10);


DELETE FROM notas WHERE borrar = "si";