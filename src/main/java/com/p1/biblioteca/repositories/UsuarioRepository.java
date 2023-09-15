package com.p1.biblioteca.repositories;

import com.p1.biblioteca.model.Usuario;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;
import java.util.Optional;


@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
    @Query("SELECT u FROM Usuario u")
    List<Usuario> findAll();

    @Query("SELECT u FROM Usuario u WHERE u.cedula= ?1")
    Optional<Usuario> findUsuarioById(Long cedula);

    @Procedure(value = "amora.usuario_paq.agregar_usuario")
    void agregarUsuario(@Param("p_cedula") Long cedula,
                        @Param("p_nombre") String nombre,
                        @Param("p_apellido") String apellido,
                        @Param("p_email") String email,
                        @Param("p_contrasenya") String contrasenya);

    @Procedure(value = "amora.usuario_paq.actualizar_usuario")
    void actualizarUsuario(@Param("p_cedula") Long cedula,
                        @Param("p_nombre") String nombre,
                        @Param("p_apellido") String apellido,
                        @Param("p_email") String email,
                        @Param("p_contrasenya") String contrasenya);

    @Procedure(value = "amora.usuario_paq.eliminar_usuario")
    void eliminarUsuario(@Param("p_cedula") Long cedula);

    @Procedure(value = "amora.usuario_paq.iniciar_sesion")
    void iniciarSesion(@Param("p_email") String email, @Param("p_contrasenya")  String password);

    @Procedure(value = "amora.usuario_paq.cant_prestamos")
    int cantPrestamos(@Param("p_cedula") Long cedula);

}
