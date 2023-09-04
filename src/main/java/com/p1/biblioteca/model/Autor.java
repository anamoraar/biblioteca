package com.p1.biblioteca.model;
import jakarta.persistence.*;

@Entity
@Table(name = "autor")
public class Autor {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "autor_seq")
    @SequenceGenerator(name = "autor_seq", sequenceName = "autor_seq", allocationSize = 1)
    @Column(name = "autor_id")
    private Long autorId;

    @Column(name = "nombre", nullable = false)
    private String nombre;

    @Column(name = "apellido")
    private String apellido;

    @ManyToOne
    @JoinColumn(name = "nacionalidad_id")
    private Nacionalidad nacionalidad;

    // Getters y setters
}
