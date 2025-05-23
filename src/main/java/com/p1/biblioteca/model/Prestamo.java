package com.p1.biblioteca.model;
import jakarta.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "prestamo")
public class Prestamo {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "prestamo_seq")
    @SequenceGenerator(name = "prestamo_seq", sequenceName = "prestamo_seq", allocationSize = 1)
    @Column(name = "prestamo_id")
    private Long prestamoId;

    @Column(name = "fecha_inicio")
    @Temporal(TemporalType.DATE)
    private Date fechaInicio;

    @Column(name = "fecha_fin")
    @Temporal(TemporalType.DATE)
    private Date fechaFin;

    @ManyToOne
    @JoinColumn(name = "cedula", nullable = false)
    private Usuario usuario;

    public Long getPrestamoId() {
        return prestamoId;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public Usuario getUsuario() {
        return usuario;
    }
}

