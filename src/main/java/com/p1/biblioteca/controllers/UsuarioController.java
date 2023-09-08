package com.p1.biblioteca.controllers;

import com.p1.biblioteca.model.Usuario;
import com.p1.biblioteca.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class UsuarioController {
    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/usuarios")
    public ModelAndView showAllUsers() {
        ModelAndView modelView = new ModelAndView();
        List<Usuario> usuarios = usuarioRepository.findAll();
        modelView.addObject("usuarios", usuarios);
        modelView.setViewName("usuarios.html");
        return modelView;
    }

    @PostMapping("/usuarios/agregar")
    public ResponseEntity<String> agregarUsuario(@RequestParam Long cedula, @RequestParam String nombre,
                                                 @RequestParam String apellido, @RequestParam String email,
                                                 @RequestParam String contrasenya) throws Exception {
        try{
            usuarioRepository.agregarUsuario(cedula, nombre, apellido, email, contrasenya);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error");
        }
        return ResponseEntity.ok("Usuario agregado");
    }

    @DeleteMapping("/usuarios/eliminar/{cedula}")
    public ResponseEntity<?> eliminarUsuario(@PathVariable("cedula") Long cedula) {
        usuarioRepository.eliminarUsuario(cedula);
        return ResponseEntity.ok("Usuario eliminado");
    }

}
