package com.p1.biblioteca.model;
import jakarta.persistence.*;

@Entity
@Table(name = "genero")
public class Genero {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "genero_seq")
    @SequenceGenerator(name = "genero_seq", sequenceName = "genero_seq", allocationSize = 1)
    @Column(name = "genero_id")
    private Long generoId;

    @Column(name = "nombre", nullable = false)
    private String nombre;

    public Long getGeneroId() {
        return generoId;
    }

    public String getNombre() {
        return nombre;
    }
}

