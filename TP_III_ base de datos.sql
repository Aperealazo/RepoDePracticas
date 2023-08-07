--CREAMOS LA TABLA USUARIOS
create table Usuarios (ID_US INT, NOMBRE VARCHAR (50),APELLIDO VARCHAR (50),REGISTRO VARCHAR (50), EDAD INT, CORREO VARCHAR (50));
--INSERTAMOS LOS DATOS DE USUARIOS
insert into Usuarios(ID_US,NOMBRE,APELLIDO,REGISTRO,EDAD,CORREO) values
  --(1, 'Federico', 'Perez', 'Facebook', 19, 'fede_perez@gmail.com'); 
    (2, 'Lucía', 'Martinez', 'Facebook', 27, 'Lucia_mar@gmail.com'),
    (3, 'Patricia', 'Lopez', 'Google', 31, 'Pato_lopez@hotmail.com'),
    (4, 'Mónica', 'Roman', 'Facebook', 26, 'monicaroman@yahoo.com'),
    (5, 'Alfredo', 'Lonn', 'Twitter', 52, 'alfredlonn@gmail.com'),
    (6, 'Juana', 'Fernandez', 'Twitter', 28, 'juanafer@hotmail.com'),
    (7, 'Camila', 'Soldan', 'Google', NULL, 'camisoldan@hotmail.com'), -- Edad es NULL en los datos proporcionados
    (8, 'Eugenia', 'Marianti', 'Facebook', 36, 'Eugenia.marianti@gmail.com'),
    (9, 'Delfina', 'Rodriguez', 'Google', 42, 'delfirodri@hotmail.com'),
    (10, 'Pablo', 'Sanchez', 'Twitter', 43, 'pablitosan@gmail.com'),
    (11, 'Ailen', 'Beliz', 'Facebook', NULL, 'ailenbeliz@fibertel.com'), -- Edad es NULL en los datos proporcionados
    (12, 'Virginia', 'Carron', 'Google', 32, 'virginiacarron@hotmail.com'),
    (13, 'Luis', 'Martinez', 'Google', 52, 'Luis.martinez@yahoo.com'),
    (14, 'Daniela', 'Fernandez', 'Twitter', 34, 'danielafernandez@telecentro.com'),
    (15, 'Elsa', 'Biondi', 'Facebook', 62, 'elsitabiondi@hotmail.com'),
    (16, 'María', 'Montes', 'Google', 38, 'Maria.montes@gmail.com'),
    (17, 'Marcela', 'Rufini', 'Twitter', 42, 'marcerufini@yahoo.com'),
    (18, 'Jimena', 'Larron', 'Google', 21, 'jimelarron@gmail.com'),
    (19, 'Karina', 'Allende', 'Facebook', 35, 'karinaaaa@hotmail.com'),
    (20, 'Pedro', 'Cáceres', 'Google', 42, 'pedrocaceres@fibertel.com.ar');

--consultas:
select * from Usuarios;
--CONSULTA CUESTIONARIO 1 
select nombre,apellido from Usuarios;
--CONSULTA CUESTIONARIO 2 
select apellido,CORREO from Usuarios;
--CONSULTA CUESTIONARIO 3 
select nombre,apellido,edad,registro from Usuarios where registro='Facebook';
--CONSULTA CUESTIONARIO 4 
select nombre,apellido,edad from Usuarios where edad >=35;
--CONSULTA CUESTIONARIO 5 
select nombre,correo,registro from Usuarios where registro='Facebook' or registro='Twitter';
--CONSULTA CUESTIONARIO 6 
select id_us,nombre,correo,edad from Usuarios where edad is null;
--CONSULTA CUESTIONARIO 7 
select * from Usuarios where registro='Google' and edad >25;
--CONSULTA CUESTIONARIO 8
delete from usuarios where id_us=8;
select * from usuarios;
--CONSULTA CUESTIONARIO 9
insert into Usuarios(ID_US,NOMBRE,APELLIDO,REGISTRO,EDAD,CORREO) values(21,'tomas','ochoa','Facebook',28,'tomasochoa@gmail.com');
select * from usuarios;
--CONSULTA CUESTIONARIO 10
update usuarios set correo = 'alfredo.lonn@yahoo.com.ar'where ID_US = 5;