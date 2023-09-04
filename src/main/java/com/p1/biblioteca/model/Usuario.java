package com.p1.biblioteca.model;

import jakarta.persistence.*;

@Entity
@Table(name = "usuario")
public class Usuario {
    @Id
    @Column(name = "cedula", nullable = false)
    private Long cedula;

    @Column(name = "nombre", nullable = false)
    private String nombre;

    @Column(name = "apellido", nullable = false)
    private String apellido;

    @Column(name = "email")
    private String email;

    @Column(name = "contrasenya", nullable = false)
    private String contrasenya;

    // Getters y setters
}

