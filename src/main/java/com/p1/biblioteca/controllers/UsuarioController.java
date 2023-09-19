package com.p1.biblioteca.controllers;

import com.p1.biblioteca.model.Usuario;
import com.p1.biblioteca.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@RestController
public class UsuarioController {
    //Repositorio de Usuario para acceder a los procedimientos del usuario_paq
    @Autowired
    private UsuarioRepository usuarioRepository;

    //Endpoint para las solicitudes GET en la ruta raíz para hacer el login
    @GetMapping("/")
    public ModelAndView showLoginForm(){
        ModelAndView modelView = new ModelAndView(); //objeto ModelAndView para representar la vista y los datos
        modelView.setViewName("login.html"); //establece el nombre de la vista en "login.html".
        return modelView;
    }

    //Endpoint que muestra todos los usuarios en la base de datos
    @GetMapping("/usuarios")
    public ModelAndView showAllUsers() {
        ModelAndView modelView = new ModelAndView();
        List<Usuario> usuarios = usuarioRepository.findAll(); //retorna una lista de todos los usuarios

        modelView.addObject("usuarios", usuarios); //los usuarios se agregan a la vista
        modelView.setViewName("usuarios.html"); //la vista es el archivo usuarios.html
        return modelView;
    }

    //Endpoint para mostrar el formulario para agregar un usuario (addUsuario.html)
    @GetMapping("/usuarios/crearusuario")
    public ModelAndView addUsuarioForm(){
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("addUsuario.html");
        return modelView;
    }

    //Endpoint para mostrar el formulario para editar un usuario (editUsuario.html)
    @GetMapping("/usuarios/editarusuario")
    public ModelAndView editUsuarioForm(@RequestParam Long cedula){
        ModelAndView modelView = new ModelAndView();
        Optional<Usuario> usuario = usuarioRepository.findUsuarioById(cedula);
        if(usuario.isPresent())
            modelView.addObject("cedula", cedula);
        modelView.setViewName("editUsuario.html");
        return modelView;
    }

    //Endpoint que verifica si un login fue exitoso al usar el iniciar_sesion de usuario_paq
    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestParam  String email, @RequestParam String password) {
        try{
            usuarioRepository.iniciarSesion(email, password);
            return ResponseEntity.ok("Login exitoso");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Credenciales incorrectas");
        }
    }

    //Endpoint que crea un nuevo usuario usando agregar_usuario del paquete usuario_paq
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

    //Endpoint que hace la actualización de un usuario usando un procedimiento almacenado de usuario_paq
    @PutMapping("/usuarios/update/{cedula}")
    public ResponseEntity<?> updateUsuario(@PathVariable("cedula") Long cedula, @RequestParam String nombre,
                                           @RequestParam String apellido, @RequestParam String email,
                                           @RequestParam String contrasenya){
        Optional<Usuario> usuarioOptional = usuarioRepository.findUsuarioById(cedula);
        if(usuarioOptional.isPresent()){
            //Se verifica que todos los datos estén llenos
            if(nombre.equals("") || apellido.equals("") || email.equals("") || contrasenya.equals(""))
                return ResponseEntity.badRequest().body("Campos incompletos");
            usuarioRepository.actualizarUsuario(cedula, nombre, apellido, email, contrasenya);
            return ResponseEntity.ok("Usuario actualizado");
        }
        return ResponseEntity.badRequest().body("Error");
    }

    //Endpoint para eliminar un usuario
    @DeleteMapping("/usuarios/eliminar/{cedula}")
    public ResponseEntity<?> eliminarUsuario(@PathVariable("cedula") Long cedula) {
        try{
            usuarioRepository.eliminarUsuario(cedula);
            return ResponseEntity.ok("Usuario eliminado");
        } catch (Exception e){
            return ResponseEntity.badRequest().body("Error");
        }
    }

}
