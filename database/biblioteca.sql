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

/*
SET SERVEROUTPUT ON;
exec usuario_paq.agregar_usuario(208300885, 'Ana', 'Mora', 'amora@gmail.com', 'freib12');
select * from usuario;
select usuario_paq.cant_prestamos(208300885) as prestamos from dual;
exec usuario_paq.eliminar_usuario(208300885);
*/

/*    
-- Eliminar secuencias 
DROP SEQUENCE nacionalidad_seq;
DROP SEQUENCE autor_seq;
DROP SEQUENCE editorial_seq;
DROP SEQUENCE genero_seq;
DROP SEQUENCE libro_seq;
DROP SEQUENCE prestamo_seq;

--Eliminar tablas
DROP TABLE prestamo_libro;
DROP TABLE prestamo;
DROP TABLE usuario
DROP TABLE libro;
DROP TABLE autor;
DROP TABLE nacionalidad;
DROP TABLE genero;
DROP TABLE editorial;
*/

