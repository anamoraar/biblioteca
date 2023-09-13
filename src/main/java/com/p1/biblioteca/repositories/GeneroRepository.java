package com.p1.biblioteca.repositories;
import com.p1.biblioteca.model.Genero;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface GeneroRepository extends JpaRepository<Genero, Long> {
    @Query("SELECT g FROM Genero g")
    List<Genero> findAll();

    @Query("SELECT g FROM Genero g WHERE g.nombre = ?1")
    Optional<Genero> findGeneroByNombre(String nombre);

}
