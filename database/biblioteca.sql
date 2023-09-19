--Proyecto 1: Casey Baeza, Adrian Molina, Ana Laura Mora

--Creacion de tablas
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
    anyo_publicacion NUMBER (4),
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
/
    
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
/    
--Paquetes

--Paquete relacionado a Usuario
CREATE OR REPLACE PACKAGE usuario_paq AS
    PROCEDURE agregar_usuario(
        p_cedula usuario.cedula%TYPE,
        p_nombre usuario.nombre%TYPE,
        p_apellido usuario.apellido%TYPE,
        p_email usuario.email%TYPE,
        p_contrasenya usuario.contrasenya%TYPE
    );
    PROCEDURE actualizar_usuario(
        p_cedula usuario.cedula%TYPE,
        p_nombre usuario.nombre%TYPE,
        p_apellido usuario.apellido%TYPE,
        p_email usuario.email%TYPE,
        p_contrasenya usuario.contrasenya%TYPE
    );
    PROCEDURE eliminar_usuario(p_cedula usuario.cedula%TYPE);
    PROCEDURE iniciar_sesion(p_email usuario.email%TYPE, p_contrasenya usuario.contrasenya%TYPE);
END usuario_paq;
/

CREATE OR REPLACE PACKAGE BODY usuario_paq AS

    -- Procedure para crear un usuario
    PROCEDURE agregar_usuario(
            p_cedula usuario.cedula%TYPE,
            p_nombre usuario.nombre%TYPE,
            p_apellido usuario.apellido%TYPE,
            p_email usuario.email%TYPE,
            p_contrasenya usuario.contrasenya%TYPE) AS
    BEGIN
        INSERT INTO usuario VALUES (p_cedula, p_nombre, p_apellido, p_email, p_contrasenya);
        COMMIT;
        EXCEPTION WHEN OTHERS THEN 
            RAISE_APPLICATION_ERROR(-20001, 'Usuario repetido');
    END agregar_usuario;
    
    -- Procedure para actualizar los datos de un usuario
    PROCEDURE actualizar_usuario(
        p_cedula usuario.cedula%TYPE,
        p_nombre usuario.nombre%TYPE,
        p_apellido usuario.apellido%TYPE,
        p_email usuario.email%TYPE,
        p_contrasenya usuario.contrasenya%TYPE) AS
    BEGIN
        UPDATE usuario
        SET nombre = p_nombre,
            apellido = p_apellido,
            email = p_email,
            contrasenya = p_contrasenya
        WHERE cedula = p_cedula;
        COMMIT;
    END actualizar_usuario;
    
    -- Procedure para eliminar un usuario
    PROCEDURE eliminar_usuario(p_cedula Usuario.cedula%TYPE) AS
    BEGIN
        DELETE FROM Usuario WHERE cedula = p_cedula;
        COMMIT;
    END eliminar_usuario;
    
    -- Procedure para iniciar sesión dado un email y una contrasenya
    PROCEDURE iniciar_sesion(
        p_email usuario.email%TYPE,
        p_contrasenya usuario.contrasenya%TYPE
        ) AS
    v_email VARCHAR2(45);
    
    BEGIN 
    SELECT email
        INTO v_email
        FROM usuario
        WHERE p_email = 'admin@example.com' AND contrasenya = p_contrasenya; --se verifica que sea el administrador
        IF v_email IS NOT NULL THEN
            DBMS_OUTPUT.put_line ('Inicio de sesión exitoso para ' || p_email);
        END IF;
        EXCEPTION WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20005, 'Credenciales incorrectas');
    END iniciar_sesion;
    
END usuario_paq;

/

--Paquete relacionado a Paquete
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
    -- Funcion para contar cuantos clientes distintos han solicitado el libro a prestamo
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
            RAISE_APPLICATION_ERROR(-20002, 'Libro repetido');
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
    -- Funcion para contar cuántos clientes distintos han solicitado el libro a préstamo
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

--Paquete relacionado a Prestamo
CREATE OR REPLACE PACKAGE prestamo_paq AS
    
  -- Procedure para crear un préstamo
  PROCEDURE agregar_prestamo(
    p_fecha_inicio IN prestamo.fecha_inicio%TYPE,
    p_fecha_fin IN prestamo.fecha_fin%TYPE,
    p_cedula IN prestamo.cedula%TYPE
  );

  -- Procedure para agregar un libro a un préstamo
  PROCEDURE agregar_libro_a_prestamo(
    p_prestamo_id IN prestamo.prestamo_id%TYPE,
    p_libro_id IN prestamo_libro.libro_id%TYPE
  );

  -- Procedure para eliminar un préstamo
  PROCEDURE eliminar_prestamo(p_prestamo_id IN prestamo.prestamo_id%TYPE);
  
  -- Función que retorna la cantidad de libros que tiene un préstamo
  FUNCTION cant_libros(p_prestamo_id IN prestamo.prestamo_id%TYPE) RETURN NUMBER;
END prestamo_paq;
/

CREATE OR REPLACE PACKAGE BODY prestamo_paq AS
    -- Procedure para crear un préstamo
    PROCEDURE agregar_prestamo(
        p_fecha_inicio IN prestamo.fecha_inicio%TYPE,
        p_fecha_fin IN prestamo.fecha_fin%TYPE,
        p_cedula IN prestamo.cedula%TYPE
    ) IS
    BEGIN
        INSERT INTO prestamo (prestamo_id, fecha_inicio, fecha_fin, cedula)
        VALUES (prestamo_seq.NEXTVAL, SYSDATE, p_fecha_fin, p_cedula);
        COMMIT;
    END agregar_prestamo;

    -- Procedure para agregar un libro a un préstamo con verificación de disponibilidad
    PROCEDURE agregar_libro_a_prestamo(
        p_prestamo_id IN prestamo.prestamo_id%TYPE,
        p_libro_id IN prestamo_libro.libro_id%TYPE
        ) IS
            v_disponibilidad NUMBER;
    BEGIN
        -- Obtener la disponibilidad actual del libro
        SELECT disponibilidad INTO v_disponibilidad
        FROM libro
        WHERE libro_id = p_libro_id;
        -- Verificar si hay libros disponibles
        IF v_disponibilidad > 0 THEN
          -- Restar uno a la disponibilidad del libro
            UPDATE libro
            SET disponibilidad = disponibilidad - 1
            WHERE libro_id = p_libro_id;
    
          -- Agregar el libro al préstamo
            INSERT INTO prestamo_libro (prestamo_id, libro_id)
            VALUES (p_prestamo_id, p_libro_id);
            COMMIT;
        ELSE
          -- No hay libros disponibles
            RAISE_APPLICATION_ERROR(-20003, 'No hay libros disponibles' || p_libro_id);
        END IF;
        EXCEPTION WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20004, 'No se encontró el libro' || p_libro_id);
    END agregar_libro_a_prestamo;

  -- Procedure para eliminar un préstamo
    PROCEDURE eliminar_prestamo(p_prestamo_id IN prestamo.prestamo_id%TYPE) IS
        BEGIN
        -- Obtener la lista de libros del préstamo
        FOR libro_rec IN (SELECT libro_id
                      FROM prestamo_libro
                      WHERE prestamo_id = p_prestamo_id) LOOP
        -- Aumentar la disponibilidad del libro en 1
              UPDATE libro
              SET disponibilidad = disponibilidad + 1
              WHERE libro_id = libro_rec.libro_id;
        END LOOP;
        -- Eliminar los registros del préstamo
        DELETE FROM prestamo_libro WHERE prestamo_id = p_prestamo_id;
        DELETE FROM prestamo WHERE prestamo_id = p_prestamo_id;
        COMMIT;
    END eliminar_prestamo;
  
  -- Función que retorna la cantidad de libros que tiene un préstamo
    FUNCTION cant_libros(p_prestamo_id IN prestamo.prestamo_id%TYPE) RETURN NUMBER 
        IS
            v_cant NUMBER;
        BEGIN
            SELECT COUNT(*) INTO v_cant
                FROM prestamo_libro
                WHERE prestamo_id = p_prestamo_id;
            RETURN v_cant;
            EXCEPTION WHEN NO_DATA_FOUND THEN
                RETURN 0;
        END cant_libros;
        
END prestamo_paq;
/

--Bitácora para los libros
CREATE TABLE bitacora_libro (
    cambio_id NUMBER (5),
    libro_id NUMBER (5),
    fecha_hora_cambio TIMESTAMP,
    usuario VARCHAR2(50),
    modificacion VARCHAR2(15),
    CONSTRAINT bitacora_libro_pk PRIMARY KEY (cambio_id)
);
/
--Secuencia para la bitácora
CREATE SEQUENCE bitacora_libro_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
--Trigger para registrar los inserts, updates y deletes sobre los libros
CREATE OR REPLACE TRIGGER tiud_bitacora_libro
AFTER INSERT OR UPDATE OR DELETE ON libro
FOR EACH ROW
DECLARE
    v_accion VARCHAR2(10);
BEGIN
    IF INSERTING THEN
        v_accion := 'INSERT';
        INSERT INTO bitacora_libro (cambio_id, libro_id, fecha_hora_cambio, usuario, modificacion)
        VALUES (bitacora_libro_seq.NEXTVAL, :NEW.libro_id, SYSTIMESTAMP, USER, v_accion);
    ELSIF UPDATING THEN
        v_accion := 'UPDATE';
        INSERT INTO bitacora_libro (cambio_id, libro_id, fecha_hora_cambio, usuario, modificacion)
        VALUES (bitacora_libro_seq.NEXTVAL, :NEW.libro_id, SYSTIMESTAMP, USER, v_accion);
    ELSIF DELETING THEN
        v_accion := 'DELETE';
        INSERT INTO bitacora_libro (cambio_id, libro_id, fecha_hora_cambio, usuario, modificacion)
        VALUES (bitacora_libro_seq.NEXTVAL, :OLD.libro_id, SYSTIMESTAMP, USER, v_accion);
    END IF;
END;

/   
-- Eliminar trigger
DROP TRIGGER tiud_bitacora_libro;

--Eliminar paquetes
DROP PACKAGE BODY usuario_paq;
DROP PACKAGE BODY libro_paq;
DROP PACKAGE BODY prestamo_paq;

DROP PACKAGE usuario_paq;
DROP PACKAGE libro_paq;
DROP PACKAGE prestamo_paq;

-- Eliminar secuencias 
DROP SEQUENCE bitacora_libro_seq;
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
/