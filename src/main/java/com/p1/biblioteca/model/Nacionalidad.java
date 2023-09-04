package com.p1.biblioteca.model;

import jakarta.persistence.*;

@Entity
@Table(name = "nacionalidad")
public class Nacionalidad {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "nacionalidad_seq")
    @SequenceGenerator(name = "nacionalidad_seq", sequenceName = "nacionalidad_seq", allocationSize = 1)
    @Column(name = "nacionalidad_id")
    private Long nacionalidadId;

    @Column(name = "nombre", nullable = false)
    private String nombre;

    // Getters y setters
}
