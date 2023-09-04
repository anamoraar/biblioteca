package com.p1.biblioteca.model;
import jakarta.persistence.*;

@Entity
@Table(name = "editorial")
public class Editorial {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "editorial_seq")
    @SequenceGenerator(name = "editorial_seq", sequenceName = "editorial_seq", allocationSize = 1)
    @Column(name = "editorial_id")
    private Long editorialId;

    @Column(name = "nombre", nullable = false)
    private String nombre;

    // Getters y setters
}

