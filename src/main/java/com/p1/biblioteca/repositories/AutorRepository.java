package com.p1.biblioteca.repositories;
import com.p1.biblioteca.model.Autor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AutorRepository extends JpaRepository<Autor, Long>{
    @Query("SELECT a FROM Autor a")
    List<Autor> findAll();

    @Query("SELECT a FROM Autor a WHERE a.nombre = ?1 AND a.apellido = ?2")
    Optional<Autor> findAutorByNombre(String nombre, String apellido);
}
