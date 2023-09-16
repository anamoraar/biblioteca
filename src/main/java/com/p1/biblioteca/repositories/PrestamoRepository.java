package com.p1.biblioteca.repositories;

import com.p1.biblioteca.model.Prestamo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;
import java.util.Optional;


@Repository
public interface PrestamoRepository extends JpaRepository<Prestamo, Long> {
    @Query("SELECT p FROM Prestamo p")
    List<Prestamo> findAll();

    @Query("SELECT p FROM Prestamo p WHERE p.prestamoId = ?1")
    Optional<Prestamo> findPrestamoById(Long id);

    @Procedure(value = "amora.prestamo_paq.agregar_prestamo")
    void agregarPrestamo(@Param("p_fecha_inicio") Date inicio,
                        @Param("p_fecha_fin") Date fin,
                        @Param("p_cedula") Long cedula);

    @Procedure(value = "amora.prestamo_paq.agregar_libro_a_prestamo")
    void agregarLibro(@Param("p_prestamo_id") Long prestamoID,
                         @Param("p_libro_id") Long libroID);

    @Procedure(value = "amora.prestamo_paq.eliminar_prestamo")
    void eliminarPrestamo(@Param("p_prestamo_id") Long prestamoID);

}
