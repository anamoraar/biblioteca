package com.p1.biblioteca.model;

import jakarta.persistence.*;

@Entity
@Table(name = "libro")
public class Libro {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "libro_seq")
    @SequenceGenerator(name = "libro_seq", sequenceName = "libro_seq", allocationSize = 1)
    @Column(name = "libro_id")
    private Long libroId;

    @Column(name = "titulo", nullable = false)
    private String titulo;

    @Column(name = "anyo_publicacion")
    private Integer anyoPublicacion;

    @Column(name = "descripcion", length = 350)
    private String descripcion;

    @Column(name = "disponibilidad")
    private Integer disponibilidad;

    @ManyToOne
    @JoinColumn(name = "autor_id", nullable = false)
    private Autor autor;

    @ManyToOne
    @JoinColumn(name = "genero_id", nullable = false)
    private Genero genero;

    @ManyToOne
    @JoinColumn(name = "editorial_id", nullable = false)
    private Editorial editorial;

    public Long getLibroId() {
        return libroId;
    }

    public String getTitulo() {
        return titulo;
    }

    public Integer getAnyoPublicacion() {
        return anyoPublicacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public Integer getDisponibilidad() {
        return disponibilidad;
    }

    public Autor getAutor() {
        return autor;
    }

    public Genero getGenero() {
        return genero;
    }

    public Editorial getEditorial() {
        return editorial;
    }
}

