-- Inserción de registros para nacionalidad
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Costarricense');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Estadounidense');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Canadiense');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'China');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Mexicana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Británica');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Francesa');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Alemana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Italiana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Española');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Portuguesa');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Brasileña');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Argentina');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Chilena');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Colombiana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Venezolana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Australiano');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Peruana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Boliviana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Uruguaya');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Irlandés');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Salvadoreña');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Guatemalteca');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Hondureña');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Nicaragüense');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Panameña');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Cubana');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Egipcia');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Ruso');
INSERT INTO nacionalidad (nacionalidad_id, nombre) VALUES (nacionalidad_seq.NEXTVAL, 'Checo');

-- Inserción de registros para autor
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Gabriel', 'García Márquez', 15);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'George', 'Orwell', 6);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Harper', 'Lee', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'James', 'Joyce', 21);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Marcel', 'Proust', 7);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'F. Scott', 'Fitzgerald', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Miguel de', 'Cervantes Saavedra', 10);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Herman', 'Melville', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Jane', 'Austen', 6);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Suzanne', 'Collins', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'J.R.R.', 'Tolkien', 6);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Carlos', 'Ruiz Zafón', 10);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Nawal', 'El Saadawi', 28);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Aquileo', 'Echeverría', 1);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Rebecca', 'Solnit', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Fiodor', 'Dostoievski', 29);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Julio', 'Cortázar', 13);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Oscar', 'Wilde', 21);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'J.D.', 'Salinger', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Milan', 'Kundera', 30);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Cormac', 'McCarthy', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Markus', 'Zusak', 17);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Ildefonso', 'Falcones', 10);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Isabel', 'Allende', 14);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Ken', 'Follett', 6);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'José', 'León Sánchez', 1);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Franz', 'Kafka', 30);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Stephen', 'King', 2);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Yolanda', 'Oreamuno', 1);
INSERT INTO autor (autor_id, nombre, apellido, nacionalidad_id) VALUES (autor_seq.NEXTVAL, 'Paulo', 'Coelho', 12);


-- Inserción de registros para editorial
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Sudamericana');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Secker and Warburg');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'J. B. Lippincott and Co.');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Sylvia Beach');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Grasset');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Charles Scribners Sons');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Francisco de Robles');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Harper and Brothers');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'T. Egerton');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Acantilado');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Taschen');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Salamandra');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Scholastic');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'George Allen and Unwin');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Oveja Negra');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Planeta');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Dar al-Adab');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Harper and Row');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'SyA');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Haymarket Books');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'RM');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Sexto Piso');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Lumen');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'The Russian Messenger');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Lippincott s Monthly Magazine');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Little, Brown and Company');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Gallimard');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Alfred A. Knopf');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Picador');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Grijalbo');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Gredos');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'Macmillan');
INSERT INTO editorial (editorial_id, nombre) VALUES (editorial_seq.NEXTVAL, 'ABC');

-- Inserción de registros para genero
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Realismo Mágico');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Distopía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Ficción');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela Clásica');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela Moderna');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela Histórica');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Fantasía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Ciencia Ficción');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Romance');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Aventura');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Misterio');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela Policial');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Ensayo');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Filosofía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Clásica');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Contemporánea');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Universal');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Biografía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Autobiografía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Feminista');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Poesía');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Historia');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Religión');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Clásica Griega');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Checa');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela de Suspense');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Literatura Australiana');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela de Terror');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela Romántica');
INSERT INTO genero (genero_id, nombre) VALUES (genero_seq.NEXTVAL, 'Novela de Época');


-- Inserción de registros para usuario
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (1, 'Admin', 'User', 'admin@example.com', 'contadmin22');
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (123456789, 'Luis', 'Castro', 'luis.castro@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (234567890, 'Marta', 'González', 'marta.gonzalez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (345678901, 'Carlos', 'López', 'carlos.lopez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (456789012, 'Ana', 'Martínez', 'ana.martinez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (567890123, 'Pedro', 'Sánchez', 'pedro.sanchez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (678901234, 'Laura', 'Ramírez', 'laura.ramirez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (789012345, 'Sergio', 'Hernández', 'sergio.hernandez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (890123456, 'Carmen', 'Gómez', 'carmen.gomez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (123789456, 'Andrés', 'Fernández', 'andres.fernandez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (234789123, 'Isabel', 'Díaz', 'isabel.diaz@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (345890234, 'Pablo', 'Torres', 'pablo.torres@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (456789345, 'Elena', 'Luna', 'elena.luna@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (567890456, 'Diego', 'Rodríguez', 'diego.rodriguez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (678901567, 'Valeria', 'Chávez', 'valeria.chavez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (789012678, 'Ricardo', 'Lara', 'ricardo.lara@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (890123789, 'Natalia', 'Ortega', 'natalia.ortega@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (123890890, 'Miguel', 'Silva', 'miguel.silva@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (234567567, 'Luisa', 'Pacheco', 'luisa.pacheco@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (345678678, 'Roberto', 'Castro', 'roberto.castro@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (456789789, 'Alicia', 'Guerra', 'alicia.guerra@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (567890890, 'Javier', 'Rojas', 'javier.rojas@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (678901901, 'Josefina', 'González', 'josefina.gonzalez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (789012012, 'Miriam', 'López', 'miriam.lopez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (890123123, 'Sofía', 'Barrantes', 'sofia.barrantes@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (123890234, 'Carlos', 'Herrera', 'carlos.herrera@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (234567345, 'Valeria', 'Torres', 'valeria.torres@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (345678456, 'Joel', 'Molina', 'joel.molina@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (456789567, 'Nicole', 'Ramírez', 'laura.ramirez@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (567890678, 'Emmanuel', 'Vega', 'Emmanuel.vega@example.com', null);
INSERT INTO usuario (cedula, nombre, apellido, email, contrasenya)
VALUES (678901789, 'Adriana', 'Pérez', 'adriana.perez@example.com', null);


-- Inserción de registros para libro
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES(libro_seq.NEXTVAL, 'Cien años de soledad', 1967 , 'Cien años de soledad trata un siglo en la vida de la familia Buendía, cuyo patriarca, José Arcadio Buendía, fundó el pueblo ficticio de Macondo, en Colombia.', 11, 1, 1, 1);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, '1984', 1949, 'Una distopía clásica de George Orwell.', 7, 2, 2, 2);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Matar un ruiseñor', 1960, 'Una novela que aborda temas de justicia racial.', 17, 3, 3, 3);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Ulises', 1922, 'Una obra compleja y experimental de James Joyce.', 12, 4, 5, 4);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'En busca del tiempo perdido', 1913, 'Una obra monumental de Marcel Proust.', 8, 5, 5, 5);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El Gran Gatsby', 1925, 'Una historia de decadencia y excesos en la era del jazz.', 18, 6, 5, 6);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Don Quijote de la Mancha', 1605, 'La obra cumbre de la literatura española.', 25, 7, 4, 7);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Moby-Dick', 1851, 'La obsesión del capitán Ahab por una ballena blanca.', 14, 8, 5, 8);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Orgullo y prejuicio', 1813, 'Una novela de amor y convenciones sociales.', 22, 9, 9, 9);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Los juegos del hambre', 2008, 'Una distopía de supervivencia en un mundo cruel.', 20, 10, 2, 13);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El Hobbit', 1937, 'La aventura de Bilbo Bolsón en la Tierra Media.', 16, 11, 10, 14);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El amor en los tiempos del cólera', 1985, 'Una historia de amor en un contexto epidémico.', 10, 1, 9, 15);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El señor de los anillos', 1954, 'La épica lucha por el Anillo Único.', 14, 11, 7, 14);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La sombra del viento', 2001, 'Un misterio literario en el Barcelona posguerra.', 18, 12, 11, 16);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Mujer en punto cero', 1975, 'La historia de una prisionera egipcia.', 8, 13, 3, 17);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Crónica de una muerte anunciada', 1981, 'La historia de un asesinato anunciado.', 15, 1, 5, 18);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Los hombres me explican cosas', 2014, 'Ensayos sobre el patriarcado y el sexismo.', 12, 15, 13, 20);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Crimen y castigo', 1866, 'La psicología de un asesino en San Petersburgo.', 16, 16, 5, 24);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Rayuela', 1963, 'Una novela experimental de Julio Cortázar.', 10, 17, 5, 1);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El retrato de Dorian Gray', 1890, 'La corrupción moral y el retrato envejeciente.', 14, 18, 5, 25);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El guardián entre el centeno', 1951, 'La alienación adolescente en Nueva York.', 20, 19, 5, 26);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La insoportable levedad del ser', 1984, 'Las vidas entrelazadas en la Praga comunista.', 12, 20, 5, 27);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La carretera', 2006, 'La odisea postapocalíptica de un padre y su hijo.', 15, 21, 5, 28);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Carrie', 1974, 'El aterrador poder telequinético de una joven.', 20, 28, 28, 28);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La ladrona de libros', 2005, 'La narración desde la perspectiva de la Muerte.', 20, 22, 5, 29);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La catedral del mar', 2006, 'La construcción de la iglesia Santa María del Mar.', 12, 23, 6, 30);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'La casa de los espíritus', 1982, 'La saga de la familia Trueba en Chile.', 18, 24, 5, 1);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'Los pilares de la Tierra', 1989, 'La construcción de una catedral en la Edad Media.', 15, 25, 6, 2);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES (libro_seq.NEXTVAL, 'El Alquimista', 1988, 'La búsqueda del tesoro personal de un joven pastor.', 12, 30, 10, 30);
INSERT INTO libro (libro_id, titulo, anyo_publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id)
VALUES(libro_seq.NEXTVAL, 'Concherías', 1905, 'Bodas, velorios, visitas de pésame, invitaciones a comer, compras de productos, serenatas, escenas poetizadas de la vida campesina', 13, 14, 21, 28);


-- Inserción de registros para prestamo
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('01,05,2023', 'DD,MM,YYYY'), TO_DATE('01,06,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,05,2023', 'DD,MM,YYYY'), TO_DATE('02,06,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,05,2023', 'DD,MM,YYYY'), TO_DATE('02,06,2023', 'DD,MM,YYYY'), 890123456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,05,2023', 'DD,MM,YYYY'), TO_DATE('02,06,2023', 'DD,MM,YYYY'), 890123123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,05,2023', 'DD,MM,YYYY'), TO_DATE('03,06,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('05,05,2023', 'DD,MM,YYYY'), TO_DATE('05,06,2023', 'DD,MM,YYYY'), 123890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('19,05,2023', 'DD,MM,YYYY'), TO_DATE('19,06,2023', 'DD,MM,YYYY'), 678901789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,06,2023', 'DD,MM,YYYY'), TO_DATE('02,07,2023', 'DD,MM,YYYY'), 890123123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('07,06,2023', 'DD,MM,YYYY'), TO_DATE('07,07,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('09,06,2023', 'DD,MM,YYYY'), TO_DATE('09,07,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,06,2023', 'DD,MM,YYYY'), TO_DATE('13,07,2023', 'DD,MM,YYYY'), 123890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,06,2023', 'DD,MM,YYYY'), TO_DATE('13,07,2023', 'DD,MM,YYYY'), 890123456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,06,2023', 'DD,MM,YYYY'), TO_DATE('13,07,2023', 'DD,MM,YYYY'), 123890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('17,06,2023', 'DD,MM,YYYY'), TO_DATE('17,07,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('23,06,2023', 'DD,MM,YYYY'), TO_DATE('23,07,2023', 'DD,MM,YYYY'), 123890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('29,06,2023', 'DD,MM,YYYY'), TO_DATE('29,07,2023', 'DD,MM,YYYY'), 789012012);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,06,2023', 'DD,MM,YYYY'), TO_DATE('30,07,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('01,07,2023', 'DD,MM,YYYY'), TO_DATE('01,08,2023', 'DD,MM,YYYY'), 678901789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,07,2023', 'DD,MM,YYYY'), TO_DATE('03,08,2023', 'DD,MM,YYYY'), 789012012);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('07,07,2023', 'DD,MM,YYYY'), TO_DATE('07,08,2023', 'DD,MM,YYYY'), 123890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('09,07,2023', 'DD,MM,YYYY'), TO_DATE('09,08,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('10,07,2023', 'DD,MM,YYYY'), TO_DATE('10,08,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,07,2023', 'DD,MM,YYYY'), TO_DATE('13,08,2023', 'DD,MM,YYYY'), 678901789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,07,2023', 'DD,MM,YYYY'), TO_DATE('13,08,2023', 'DD,MM,YYYY'), 123890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,07,2023', 'DD,MM,YYYY'), TO_DATE('13,08,2023', 'DD,MM,YYYY'), 678901789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('14,07,2023', 'DD,MM,YYYY'), TO_DATE('14,08,2023', 'DD,MM,YYYY'), 123890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('14,07,2023', 'DD,MM,YYYY'), TO_DATE('14,08,2023', 'DD,MM,YYYY'), 890123789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('17,07,2023', 'DD,MM,YYYY'), TO_DATE('17,08,2023', 'DD,MM,YYYY'), 789012012);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('17,07,2023', 'DD,MM,YYYY'), TO_DATE('17,08,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('17,07,2023', 'DD,MM,YYYY'), TO_DATE('17,08,2023', 'DD,MM,YYYY'), 890123789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('18,07,2023', 'DD,MM,YYYY'), TO_DATE('18,08,2023', 'DD,MM,YYYY'), 789012012);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('26,07,2023', 'DD,MM,YYYY'), TO_DATE('26,08,2023', 'DD,MM,YYYY'), 123890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('29,07,2023', 'DD,MM,YYYY'), TO_DATE('29,08,2023', 'DD,MM,YYYY'), 789012678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,07,2023', 'DD,MM,YYYY'), TO_DATE('30,08,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,07,2023', 'DD,MM,YYYY'), TO_DATE('30,08,2023', 'DD,MM,YYYY'), 567890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('01,08,2023', 'DD,MM,YYYY'), TO_DATE('01,09,2023', 'DD,MM,YYYY'), 789012678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,08,2023', 'DD,MM,YYYY'), TO_DATE('03,09,2023', 'DD,MM,YYYY'), 234567345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,08,2023', 'DD,MM,YYYY'), TO_DATE('03,09,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,08,2023', 'DD,MM,YYYY'), TO_DATE('03,09,2023', 'DD,MM,YYYY'), 567890456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('03,08,2023', 'DD,MM,YYYY'), TO_DATE('03,09,2023', 'DD,MM,YYYY'), 567890678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('05,08,2023', 'DD,MM,YYYY'), TO_DATE('05,09,2023', 'DD,MM,YYYY'), 234567345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('05,08,2023', 'DD,MM,YYYY'), TO_DATE('05,09,2023', 'DD,MM,YYYY'), 123789456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('06,08,2023', 'DD,MM,YYYY'), TO_DATE('06,09,2023', 'DD,MM,YYYY'), 890123456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('06,08,2023', 'DD,MM,YYYY'), TO_DATE('06,09,2023', 'DD,MM,YYYY'), 567890456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('06,08,2023', 'DD,MM,YYYY'), TO_DATE('06,09,2023', 'DD,MM,YYYY'), 567890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('06,08,2023', 'DD,MM,YYYY'), TO_DATE('06,09,2023', 'DD,MM,YYYY'), 456789345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('06,08,2023', 'DD,MM,YYYY'), TO_DATE('06,09,2023', 'DD,MM,YYYY'), 567890678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('08,08,2023', 'DD,MM,YYYY'), TO_DATE('08,09,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('08,08,2023', 'DD,MM,YYYY'), TO_DATE('08,09,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('08,08,2023', 'DD,MM,YYYY'), TO_DATE('08,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('09,08,2023', 'DD,MM,YYYY'), TO_DATE('09,09,2023', 'DD,MM,YYYY'), 345890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('10,08,2023', 'DD,MM,YYYY'), TO_DATE('10,09,2023', 'DD,MM,YYYY'), 234567345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('11,08,2023', 'DD,MM,YYYY'), TO_DATE('11,09,2023', 'DD,MM,YYYY'), 123789456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('12,08,2023', 'DD,MM,YYYY'), TO_DATE('12,09,2023', 'DD,MM,YYYY'), 567890890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,08,2023', 'DD,MM,YYYY'), TO_DATE('13,09,2023', 'DD,MM,YYYY'), 234789123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,08,2023', 'DD,MM,YYYY'), TO_DATE('13,09,2023', 'DD,MM,YYYY'), 123789456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,08,2023', 'DD,MM,YYYY'), TO_DATE('13,09,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('13,08,2023', 'DD,MM,YYYY'), TO_DATE('13,09,2023', 'DD,MM,YYYY'), 345678456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('16,08,2023', 'DD,MM,YYYY'), TO_DATE('16,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('16,08,2023', 'DD,MM,YYYY'), TO_DATE('16,09,2023', 'DD,MM,YYYY'), 234789123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('19,08,2023', 'DD,MM,YYYY'), TO_DATE('19,09,2023', 'DD,MM,YYYY'), 456789567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('19,08,2023', 'DD,MM,YYYY'), TO_DATE('19,09,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('22,08,2023', 'DD,MM,YYYY'), TO_DATE('22,09,2023', 'DD,MM,YYYY'), 234567567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('22,08,2023', 'DD,MM,YYYY'), TO_DATE('22,09,2023', 'DD,MM,YYYY'), 567890678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('22,08,2023', 'DD,MM,YYYY'), TO_DATE('22,09,2023', 'DD,MM,YYYY'), 345678678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('24,08,2023', 'DD,MM,YYYY'), TO_DATE('24,09,2023', 'DD,MM,YYYY'), 345890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('24,08,2023', 'DD,MM,YYYY'), TO_DATE('24,09,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('24,08,2023', 'DD,MM,YYYY'), TO_DATE('24,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('24,08,2023', 'DD,MM,YYYY'), TO_DATE('24,09,2023', 'DD,MM,YYYY'), 345678456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('24,08,2023', 'DD,MM,YYYY'), TO_DATE('24,09,2023', 'DD,MM,YYYY'), 345678678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('25,08,2023', 'DD,MM,YYYY'), TO_DATE('25,09,2023', 'DD,MM,YYYY'), 456789567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('25,08,2023', 'DD,MM,YYYY'), TO_DATE('25,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('25,08,2023', 'DD,MM,YYYY'), TO_DATE('25,09,2023', 'DD,MM,YYYY'), 456789789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('25,08,2023', 'DD,MM,YYYY'), TO_DATE('25,09,2023', 'DD,MM,YYYY'), 234789123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('26,08,2023', 'DD,MM,YYYY'), TO_DATE('26,09,2023', 'DD,MM,YYYY'), 345678678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('26,08,2023', 'DD,MM,YYYY'), TO_DATE('26,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 456789567);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 789012345);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 123456789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 678901234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 345678456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('28,08,2023', 'DD,MM,YYYY'), TO_DATE('28,09,2023', 'DD,MM,YYYY'), 234789123);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('29,08,2023', 'DD,MM,YYYY'), TO_DATE('29,09,2023', 'DD,MM,YYYY'), 678901789);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,08,2023', 'DD,MM,YYYY'), TO_DATE('30,09,2023', 'DD,MM,YYYY'), 345678678);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,08,2023', 'DD,MM,YYYY'), TO_DATE('30,09,2023', 'DD,MM,YYYY'), 456789012);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,08,2023', 'DD,MM,YYYY'), TO_DATE('30,09,2023', 'DD,MM,YYYY'), 345890234);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('30,08,2023', 'DD,MM,YYYY'), TO_DATE('30,09,2023', 'DD,MM,YYYY'), 345678901);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('01,09,2023', 'DD,MM,YYYY'), TO_DATE('01,10,2023', 'DD,MM,YYYY'), 345678456);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,09,2023', 'DD,MM,YYYY'), TO_DATE('02,10,2023', 'DD,MM,YYYY'), 234567890);
INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
VALUES (prestamo_seq.NEXTVAL, TO_DATE('02,09,2023', 'DD,MM,YYYY'), TO_DATE('02,10,2023', 'DD,MM,YYYY'), 345890234);


-- Inserción de registros para prestamo_libro
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (1, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (1, 7);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (2, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (3, 3);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (3, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (4, 1);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (5, 15);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (6, 30);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (7, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (7, 22);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (7, 27);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (8, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (9, 3);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (10, 5);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (11, 13);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (12, 1);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (13, 11);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (13, 27);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (13, 24);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (14, 19);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (15, 19);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (16, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (17, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (17, 11);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (18, 24);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (19, 12);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (20, 10);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (21, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (21, 3);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (22, 7);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (23, 6);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (24, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (25, 15);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (25, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (26, 26);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (27, 25);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (28, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (29, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (29, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (30, 10);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (30, 18);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (31, 16);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (32, 17);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (33, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (34, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (35, 5);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (36, 6);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (36, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (37, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (38, 14);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (38, 25);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (39, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (40, 14);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (41, 17);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (42, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (43, 30);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (43, 29);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (44, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (45, 5);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (46, 6);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (47, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (48, 25);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (48, 21);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (49, 20);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (50, 12);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (51, 1);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (52, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (52, 7);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (52, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (52, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (53, 3);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (54, 2);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (55, 15);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (56, 6);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (56, 7);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (57, 7);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (58, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (59, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (60, 17);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (61, 29);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (62, 20);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (63, 21);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (64, 24);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (65, 25);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (66, 16);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (67, 17);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (56, 11);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (56, 29);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (56, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (69, 21);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (70, 20);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (71, 30);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (72, 1);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (73, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (74, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (75, 3);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (75, 6);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (76, 19);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (77, 9);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (77, 26);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (79, 29);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (80, 10);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (80, 20);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (81, 12);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (82, 23);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (83, 30);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (84, 4);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (85, 5);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (85, 8);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (86, 10);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (87, 10);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (88, 11);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (89, 18);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (90, 17);
INSERT INTO prestamo_libro (prestamo_id, libro_id)
VALUES (90, 10);

COMMIT;