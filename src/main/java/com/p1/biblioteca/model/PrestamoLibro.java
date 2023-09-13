package com.p1.biblioteca.model;

import jakarta.persistence.*;

@Entity
@Table(name = "prestamo_libro")
@IdClass(PrestamoLibroPK.class)
public class PrestamoLibro {
    @Id
    @ManyToOne
    @JoinColumn(name = "prestamo_id", nullable = false)
    private Prestamo prestamo;

    @Id
    @ManyToOne
    @JoinColumn(name = "libro_id", nullable = false)
    private Libro libro;

    public Prestamo getPrestamo() {
        return prestamo;
    }

    public Libro getLibro() {
        return libro;
    }
}

