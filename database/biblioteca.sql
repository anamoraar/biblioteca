--Proyecto 1: Casey Baeza, Adrián Molina, Ana Laura Mora

--Creación de tablas
CREATE TABLE nacionalidad(
    nacionalidad_id NUMBER(3) NOT NULL,
    nombre VARCHAR2 (30) NOT NULL,
    CONSTRAINT nacionalidad_pk PRIMARY KEY (nacionalidad_id)
);

CREATE TABLE autor(
    autor_id NUMBER (3) NOT NULL,
    nombre VARCHAR2 (30) NOT NULL,
    apellido VARCHAR2 (30),
    nacionalidad_id NUMBER(3),
    CONSTRAINT autor_pk PRIMARY KEY (autor_id),
    CONSTRAINT autor_nacionalidad_id_fk FOREIGN KEY (nacionalidad_id) REFERENCES nacionalidad(nacionalidad_id)
);

CREATE TABLE editorial(
    editorial_id NUMBER (3) NOT NULL,
    nombre VARCHAR2 (30) NOT NULL,
    CONSTRAINT editorial_pk PRIMARY KEY (editorial_id)
);

CREATE TABLE genero(
    genero_id NUMBER (3) NOT NULL,
    nombre VARCHAR2 (30) NOT NULL,
    CONSTRAINT genero_pk PRIMARY KEY (genero_id)
);

CREATE TABLE libro(
    libro_id NUMBER (5) NOT NULL,
    titulo VARCHAR2 (50) NOT NULL,
    anyo_publicacion NUMBER (4), --usamos number(4) o date?
    descripcion VARCHAR2 (350),
    disponibilidad NUMBER (5),
    autor_id NUMBER (3) NOT NULL,
    genero_id NUMBER (3) NOT NULL,
    editorial_id NUMBER (3) NOT NULL,
    CONSTRAINT libro_pk PRIMARY KEY (libro_id),
    CONSTRAINT libro_autor_id_fk FOREIGN KEY (autor_id) REFERENCES autor(autor_id),
    CONSTRAINT libro_genero_id_fk FOREIGN KEY (genero_id) REFERENCES genero(genero_id),
    CONSTRAINT libro_editorial_id_fk FOREIGN KEY (editorial_id) REFERENCES editorial(editorial_id)
);

CREATE TABLE usuario(
    cedula NUMBER (9) NOT NULL,
    nombre VARCHAR2 (25) NOT NULL,
    apellido VARCHAR2 (30) NOT NULL,
    email VARCHAR2 (45) NOT NULL,
    contrasenya VARCHAR2 (50) NOT NULL,
    CONSTRAINT usuario_pk PRIMARY KEY (cedula)
);

CREATE TABLE prestamo(
    prestamo_id NUMBER (5) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    cedula NUMBER (9) NOT NULL,
    CONSTRAINT prestamo_pk PRIMARY KEY (prestamo_id),
    CONSTRAINT prestamo_cedula_fk FOREIGN KEY (cedula) REFERENCES usuario(cedula)
);


CREATE TABLE prestamo_libro(
    prestamo_id NUMBER(5) NOT NULL,
    libro_id NUMBER(5) NOT NULL,
    CONSTRAINT prestamo_libro_pk PRIMARY KEY (prestamo_id, libro_id),
    CONSTRAINT prestamo_libro_prestamo_fk FOREIGN KEY (prestamo_id) REFERENCES prestamo(prestamo_id),
    CONSTRAINT prestamo_libro_libro_fk FOREIGN KEY (libro_id) REFERENCES libro(libro_id)
);
    
--Creación de secuencias
CREATE SEQUENCE nacionalidad_seq
    START WITH 1 
    INCREMENT BY 1
    NOCACHE
 	NOCYCLE;

CREATE SEQUENCE autor_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE editorial_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE genero_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE libro_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
 	NOCYCLE;
    
    
CREATE SEQUENCE prestamo_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
 	NOCYCLE;
    
--Paquetes

--Paquete relacionado a Usuario
CREATE OR REPLACE PACKAGE usuario_paq AS
    PROCEDURE agregar_usuario(
        p_cedula usuario.cedula%TYPE,
        p_nombre usuario.nombre%TYPE,
        p_apellido usuario.apellido%TYPE,
        p_email usuario.email%TYPE,
        p_contrasenya usuario.contrasenya%TYPE);
    PROCEDURE eliminar_usuario(p_cedula usuario.cedula%TYPE);
    FUNCTION cant_prestamos(p_cedula usuario.cedula%TYPE) RETURN NUMBER;
END usuario_paq;
/

CREATE OR REPLACE PACKAGE BODY usuario_paq AS
    PROCEDURE agregar_usuario(
            p_cedula usuario.cedula%TYPE,
            p_nombre usuario.nombre%TYPE,
            p_apellido usuario.apellido%TYPE,
            p_email usuario.email%TYPE,
            p_contrasenya usuario.contrasenya%TYPE) AS
        BEGIN
            INSERT INTO usuario VALUES(p_cedula, p_nombre, p_apellido, p_email, p_contrasenya);
            COMMIT;
            EXCEPTION WHEN OTHERS THEN
                IF SQLCODE=-1 THEN
                    DBMS_OUTPUT.put_line ('Ya existe un usuario de cédula ' || p_cedula);
                ELSE
                    DBMS_OUTPUT.put_line (SQLERRM);
                END IF;
    END agregar_usuario;
    
    PROCEDURE eliminar_usuario(p_cedula Usuario.cedula%TYPE) AS
        BEGIN
            DELETE FROM Usuario WHERE cedula = p_cedula;
            COMMIT;
        END eliminar_usuario;
        
    FUNCTION cant_prestamos(p_cedula Usuario.cedula%TYPE) RETURN NUMBER AS
        prestamos_count NUMBER(3);
        BEGIN
            SELECT count(*) INTO prestamos_count
                FROM prestamo pres
                WHERE pres.cedula = p_cedula;
            RETURN prestamos_count;
        END cant_prestamos;

END usuario_paq;
/

CREATE OR REPLACE PACKAGE libro_paq AS
    -- Procedure para crear un libro
    PROCEDURE agregar_libro(
        p_titulo libro.titulo%TYPE,
        p_anyo_publicacion libro.anyo_publicacion%TYPE,
        p_descripcion libro.descripcion%TYPE,
        p_disponibilidad libro.disponibilidad%TYPE,
        p_autor_id libro.autor_id%TYPE,
        p_genero_id libro.genero_id%TYPE,
        p_editorial_id libro.editorial_id%TYPE);
    
    -- Procedure para actualizar un libro
    PROCEDURE actualizar_libro(
        p_libro_id libro.libro_id%TYPE,
        p_titulo libro.titulo%TYPE,
        p_anyo_publicacion libro.anyo_publicacion%TYPE,
        p_descripcion libro.descripcion%TYPE,
        p_disponibilidad libro.disponibilidad%TYPE,
        p_autor_id libro.autor_id%TYPE,
        p_genero_id libro.genero_id%TYPE,
        p_editorial_id libro.editorial_id%TYPE);
    
    -- Procedure para eliminar un libro
    PROCEDURE eliminar_libro(p_libro_id libro.libro_id%TYPE);
    -- Función para contar cuántos clientes distintos han solicitado el libro a préstamo
    FUNCTION cant_clientes_prestamo(p_libro_id libro.libro_id%TYPE) RETURN NUMBER;
END libro_paq;
/

CREATE OR REPLACE PACKAGE BODY libro_paq AS
    -- Procedure para crear un libro
    PROCEDURE agregar_libro(
        p_titulo libro.titulo%TYPE,
        p_anyo_publicacion libro.anyo_publicacion%TYPE,
        p_descripcion libro.descripcion%TYPE,
        p_disponibilidad libro.disponibilidad%TYPE,
        p_autor_id libro.autor_id%TYPE,
        p_genero_id libro.genero_id%TYPE,
        p_editorial_id libro.editorial_id%TYPE) AS
    BEGIN
        INSERT INTO libro VALUES (libro_seq.NEXTVAL, p_titulo, p_anyo_publicacion, p_descripcion, p_disponibilidad, p_autor_id, p_genero_id, p_editorial_id);
        COMMIT;
		EXCEPTION WHEN OTHERS THEN
                IF SQLCODE=-1 THEN
                    DBMS_OUTPUT.put_line ('Ya existe un libro con el mismo título' || p_titulo);
                ELSE
                    DBMS_OUTPUT.put_line (SQLERRM);
                END IF;
    END agregar_libro;

    -- Procedure para actualizar un libro
    PROCEDURE actualizar_libro(
        p_libro_id libro.libro_id%TYPE,
        p_titulo libro.titulo%TYPE,
        p_anyo_publicacion libro.anyo_publicacion%TYPE,
        p_descripcion libro.descripcion%TYPE,
        p_disponibilidad libro.disponibilidad%TYPE,
        p_autor_id libro.autor_id%TYPE,
        p_genero_id libro.genero_id%TYPE,
        p_editorial_id libro.editorial_id%TYPE) AS
    BEGIN
        UPDATE libro
        SET titulo = p_titulo,
            anyo_publicacion = p_anyo_publicacion,
            descripcion = p_descripcion,
            disponibilidad = p_disponibilidad,
            autor_id = p_autor_id,
            genero_id = p_genero_id,
            editorial_id = p_editorial_id
        WHERE libro_id = p_libro_id;
        COMMIT;
    END actualizar_libro;

    -- Procedure para eliminar un libro
    PROCEDURE eliminar_libro(p_libro_id libro.libro_id%TYPE) AS
    BEGIN
        DELETE FROM libro WHERE libro_id = p_libro_id;
        COMMIT;
    END eliminar_libro;

    -- Función para contar cuántos clientes distintos han solicitado el libro a préstamo
    FUNCTION cant_clientes_prestamo(p_libro_id libro.libro_id%TYPE) RETURN NUMBER IS
        v_count NUMBER(3);
    BEGIN
        SELECT COUNT(DISTINCT pres.cedula) INTO v_count
        	FROM prestamo pres
        	INNER JOIN prestamo_libro pl ON pres.prestamo_id = pl.prestamo_id
        	WHERE pl.libro_id = p_libro_id;
        RETURN v_count;
    END cant_clientes_prestamo;

END libro_paq;
/

/*
--Pruebas Paquete usuario
SET SERVEROUTPUT ON;
exec usuario_paq.agregar_usuario(208300885, 'Ana', 'Mora', 'amora@gmail.com', 'freib12');
select * from usuario;
select usuario_paq.cant_prestamos(208300885) as prestamos from dual;
exec usuario_paq.eliminar_usuario(208300885);

--Pruebas Paquete libro
INSERT INTO nacionalidad VALUES (1, 'Nacionalidad 1');
INSERT INTO autor VALUES (1, 'Autor 1', 'Apellido 1', 1);
INSERT INTO editorial VALUES (1, 'Editorial 1');
INSERT INTO genero VALUES (1, 'Género 1');

select * from libro;
EXEC libro_paq.agregar_libro('Harry Potter', 2023, 'Description 1', 10, 1, 1, 1);
EXEC libro_paq.actualizar_libro(1, 'Harry Potter 2', 2024, 'Description 2', 15, 1, 1, 1);
EXEC libro_paq.eliminar_libro(1);
select libro_paq.cant_clientes_prestamo(2) as prestamos from dual;

DELETE FROM autor WHERE autor_id = 1;
DELETE FROM editorial WHERE editorial_id = 1;
DELETE FROM genero WHERE genero_id = 1;
DELETE FROM nacionalidad WHERE nacionalidad_id = 1;
*/

CREATE TABLE bitacora_libro (
    cambio_id NUMBER (5),
    libro_id NUMBER (5),
    fecha_hora_cambio TIMESTAMP,
    usuario VARCHAR2(50),
    modificacion VARCHAR2(15),
    CONSTRAINT bitacora_libro_pk PRIMARY KEY (cambio_id)
);

CREATE SEQUENCE cambio_bitacora_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE OR REPLACE TRIGGER tiud_bitacora_libro
AFTER INSERT OR UPDATE OR DELETE ON libro
FOR EACH ROW
DECLARE
    v_accion VARCHAR2(10);
BEGIN
    IF INSERTING THEN
        v_accion := 'INSERT';
    ELSIF UPDATING THEN
        v_accion := 'UPDATE';
    ELSIF DELETING THEN
        v_accion := 'DELETE';
    END IF;

    INSERT INTO bitacora_libro (cambio_id, libro_id, fecha_hora_cambio, usuario, modificacion)
    VALUES (cambio_bitacora_seq.NEXTVAL, :NEW.libro_id, SYSTIMESTAMP, USER, v_accion);
END;
/






/*    
-- Eliminar trigger
DROP TRIGGER tiud_bitacora_libro;
-- Eliminar secuencias 
DROP SEQUENCE cambio_bitacora_seq;
DROP SEQUENCE nacionalidad_seq;
DROP SEQUENCE autor_seq;
DROP SEQUENCE editorial_seq;
DROP SEQUENCE genero_seq;
DROP SEQUENCE libro_seq;
DROP SEQUENCE prestamo_seq;

--Eliminar tablas
DROP TABLE bitacora_libro;
DROP TABLE prestamo_libro;
DROP TABLE prestamo;
DROP TABLE usuario;
DROP TABLE libro;
DROP TABLE autor;
DROP TABLE nacionalidad;
DROP TABLE genero;
DROP TABLE editorial;
*/