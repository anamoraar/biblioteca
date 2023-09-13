package com.p1.biblioteca.repositories;

import com.p1.biblioteca.model.PrestamoLibro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PrestamoLibroRepository extends JpaRepository<PrestamoLibro, Long>{

    @Query("SELECT p FROM PrestamoLibro p WHERE p.libro.libroId = ?1")
    List<PrestamoLibro> findPrestamoLibroByLibro(Long id);

    @Query("SELECT p FROM PrestamoLibro p WHERE p.prestamo.prestamoId = ?1")
    List<PrestamoLibro> findPrestamoLibroByPrestamo(Long id);
}
