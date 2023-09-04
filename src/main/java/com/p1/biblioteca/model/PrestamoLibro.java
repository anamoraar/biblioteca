package com.p1.biblioteca.model;

import jakarta.persistence.*;

@Entity
@Table(name = "prestamo_libro")
public class PrestamoLibro {
    @Id
    @ManyToOne
    @JoinColumn(name = "prestamo_id", nullable = false)
    private Prestamo prestamo;

    @Id
    @ManyToOne
    @JoinColumn(name = "libro_id", nullable = false)
    private Libro libro;

    // Getters and setters
}

