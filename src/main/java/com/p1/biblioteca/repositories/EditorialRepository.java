package com.p1.biblioteca.repositories;
import com.p1.biblioteca.model.Editorial;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EditorialRepository extends JpaRepository<Editorial, Long>{
    @Query("SELECT e FROM Editorial e")
    List<Editorial> findAll();

    @Query("SELECT e FROM Editorial e WHERE e.nombre = ?1")
    Optional<Editorial> findEditorialByNombre(String nombre);
}
