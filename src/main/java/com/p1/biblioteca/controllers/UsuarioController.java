package com.p1.biblioteca.controllers;

import com.p1.biblioteca.model.Usuario;
import com.p1.biblioteca.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;
import java.util.Optional;

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

    @GetMapping("/usuarios/crearusuario")
    public ModelAndView addUsuarioForm(){
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("addUsuario.html");
        return modelView;
    }

    @GetMapping("/usuarios/editarusuario")
    public ModelAndView editUsuarioForm(@RequestParam Long cedula){
        ModelAndView modelView = new ModelAndView();
        Optional<Usuario> usuario = usuarioRepository.findUsuarioById(cedula);
        if(usuario.isPresent())
            modelView.addObject("cedula", cedula);
        modelView.setViewName("editUsuario.html");
        return modelView;
    }

    @PostMapping("/usuarios/agregar")
    public ResponseEntity<String> agregarUsuario(@RequestParam Long cedula, @RequestParam String nombre,
                                                 @RequestParam String apellido, @RequestParam String email,
                                                 @RequestParam String contrasenya) {
        try{
            usuarioRepository.agregarUsuario(cedula, nombre, apellido, email, contrasenya);
            return ResponseEntity.ok("Usuario agregado");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error");
        }
    }

    @PutMapping("/usuarios/update/{cedula}")
    public ResponseEntity<?> updateUsuario(@PathVariable("cedula") Long cedula, @RequestParam String nombre,
                                           @RequestParam String apellido, @RequestParam String email,
                                           @RequestParam String contrasenya){
        Optional<Usuario> usuarioOptional = usuarioRepository.findUsuarioById(cedula);
        if(usuarioOptional.isPresent()){
            if(nombre.equals("") || apellido.equals("") || email.equals("") || contrasenya.equals(""))
                return ResponseEntity.badRequest().body("Error");
            usuarioRepository.actualizarUsuario(cedula, nombre, apellido, email, contrasenya);
            return ResponseEntity.ok("Usuario actualizado");
        }
        return ResponseEntity.badRequest().body("Error");
    }

    @DeleteMapping("/usuarios/eliminar/{cedula}")
    public ResponseEntity<?> eliminarUsuario(@PathVariable("cedula") Long cedula) {
        usuarioRepository.eliminarUsuario(cedula);
        return ResponseEntity.ok("Usuario eliminado");
    }

}
