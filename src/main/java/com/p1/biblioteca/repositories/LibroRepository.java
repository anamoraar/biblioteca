package com.p1.biblioteca.repositories;

import com.p1.biblioteca.model.Libro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface LibroRepository extends JpaRepository<Libro, Long> {
    @Query("SELECT l FROM Libro l")
    List<Libro> findAll();

    @Query("SELECT l FROM Libro l WHERE l.libroId = ?1")
    Optional<Libro> findLibroById(Long id);

    @Procedure(value = "amora.libro_paq.agregar_libro")
    void agregarLibro(@Param("p_titulo") String titulo,
                      @Param("p_anyo_publicacion") Integer publicacion,
                      @Param("p_descripcion") String descripcion,
                      @Param("p_disponibilidad") Integer disponibilidad,
                      @Param("p_autor_id") Long autor_id,
                      @Param("p_genero_id") Long genero_id,
                      @Param("p_editorial_id") Long editorial_id);

    @Procedure(value = "amora.libro_paq.actualizar_libro")
    void actualizarLibro(@Param("p_libro_id") Long libro_id,
                         @Param("p_titulo") String titulo,
                         @Param("p_anyo_publicacion") Integer publicacion,
                         @Param("p_descripcion") String descripcion,
                         @Param("p_disponibilidad") Integer disponibilidad,
                         @Param("p_autor_id") Long autor_id,
                         @Param("p_genero_id") Long genero_id,
                         @Param("p_editorial_id") Long editorial_id);

    @Procedure(value = "amora.libro_paq.eliminar_libro")
    void eliminarLibro(@Param("p_libro_id") Long libro_id);

    @Query(value = "SELECT amora.libro_paq.cant_clientes_prestamo(:p_libro_id) FROM DUAL", nativeQuery = true)
    int cantClientes(@Param("p_libro_id") Long libro_id);
}
