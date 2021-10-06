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
borrar VARCHAR(10) NOT NULL
);

INSERT INTO notas(title,creation,descriptions,modification,borrar) 
VALUES("cocina para novatos","2000-02-02","cocina para novatos","2020-11-22","no"),
("jardineria para novatos","2010-02-02","crea tu propio jardin","2015-11-22","si"),
("armado de pc","2000-02-02","arma tu propia computadora","2017-11-22","si"),
("jugadores profesionales del ajedrez","1970-02-02","los mejores jugadores","2012-11-22","no"),
("los mejores juegos de mesa","1990-02-02","juegos de mesa para disfrutar en familia","2000-11-22","si"),
("lista del año de los mejores juegos","2000-02-02","los juegos mas vendidos en el año","2020-11-22","no"),
("jonh wick","2000-02-02","la pelicula de accio mas vista","2022-11-22","no"),
("los mejores libros para leer y disdrutar","2000-02-02","disfruta de una buena lectura","2020-11-22","si"),
("los fisicos mas reconocidos del mundo","2000-02-02","mira la historia de estas grandes mentes","2020-11-22","no"),
("las reacciones mquimicas mas divertidas","2000-02-02","haz tus pruebas y diviertete","2020-11-22","no");

CREATE TABLE users (
id INT AUTO_INCREMENT,
PRIMARY KEY (id),
userName VARCHAR(100) NOT NULL,
email VARCHAR(20) UNIQUE NOT NULL
);

INSERT INTO users(userName,email)
VALUES ('Max','Power@hotmail.com'),("juan","juan@hola.com"),("pepe","uno_dos@hotmail.com"),
("manuel","saludos@_99.com"),("erika","solar@yahoo.com"),("tomas","tom@98.ar"),("delfina","bella@gg.er"),
("matias","matias@hotmal.com"),("agustina","agus@yahoo.com"),("pepe","pep@yahoo.com");

CREATE TABLE user_notas (
    idUser INT NOT NULL,
    FOREIGN KEY (idUser) REFERENCES users(id),
    idNota INT NOT NULL,
    FOREIGN KEY (idNota) REFERENCES notas(id),
    idCategories INT NOT NULL,
    FOREIGN KEY (idCategories) REFERENCES categories(id),
);

INSERT INTO user_notas(idUser,idNota,idCategories)
VALUES (1,3,5),(1,3,7),(2,5,9),
(3,6,7),(3,6,9),(4,7,1),(4,7,2),
(5,1,3),(6,2,5),(6,2,8),(6,2,10);



DELETE FROM notas WHERE borrar = "si";