package com.p1.biblioteca.controllers;

import com.p1.biblioteca.model.Libro;
import com.p1.biblioteca.model.Prestamo;
import com.p1.biblioteca.model.PrestamoLibro;
import com.p1.biblioteca.model.Usuario;
import com.p1.biblioteca.repositories.LibroRepository;
import com.p1.biblioteca.repositories.PrestamoLibroRepository;
import com.p1.biblioteca.repositories.PrestamoRepository;
import com.p1.biblioteca.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
public class PrestamoController {
    //Repositorios para acceder a los procedimientos almacenados de los paquetes
    @Autowired
    private PrestamoRepository prestamoRepository;
    @Autowired
    private PrestamoLibroRepository prestamoLibroRepository;
    @Autowired
    private UsuarioRepository usuarioRepository;
    @Autowired
    private LibroRepository libroRepository;

    //Endpoint que muestra todos los préstamos de la base de datos
    @GetMapping("/prestamos")
    public ModelAndView showAllPrestamos() {
        ModelAndView modelView = new ModelAndView();
        List<Prestamo> prestamos = prestamoRepository.findAll();
        modelView.addObject("prestamos", prestamos);
        modelView.setViewName("prestamos.html");
        return modelView;
    }

    //Endpoint para mostrar el formulario para crear un préstamo (addPrestamo.html)
    @GetMapping("/prestamos/crearprestamo")
    public ModelAndView addPrestamoForm() {
        ModelAndView modelView = new ModelAndView();
        List<Usuario> usuarios = usuarioRepository.findAll();
        //Se agregan los usuarios para hacer un dropdown menu
        modelView.addObject("usuarios", usuarios);
        modelView.setViewName("addPrestamo.html");
        return modelView;
    }

    //Endpoint que muestra el formulario para agregar libros a un préstamo (addBooksPrestamo.html)
    @GetMapping("/prestamos/librosform")
    public ModelAndView addBooksForm(@RequestParam Long id) {
        ModelAndView modelView = new ModelAndView();
        List<Libro> libros = libroRepository.findAll();
        //se agregan los libros a la vista para mostrarlos en un checkbox
        modelView.addObject("libros", libros);
        modelView.addObject("prestamo_id", id);
        modelView.setViewName("addBooksPrestamo.html");
        return modelView;
    }

    //Endpoint para mostrar todos los datos de un préstamo (prestamoDetalles.html)
    @GetMapping("/prestamos/detalles")
    public ModelAndView showPrestamoDetails(@RequestParam Long id) {
        ModelAndView modelView = new ModelAndView();
        Optional<Prestamo> prestamoOptional = prestamoRepository.findPrestamoById(id);
        if (prestamoOptional.isPresent()) {
            Prestamo prestamo = prestamoOptional.get();
            List<PrestamoLibro> prestamoLibros = prestamoLibroRepository.findPrestamoLibroByPrestamo(id);
            List<Libro> libros = new ArrayList<>();
            for(PrestamoLibro instancia: prestamoLibros)
                libros.add(instancia.getLibro());
            //Se agregan los atributos del préstamo que se quieren mostrar en la vista
            modelView.addObject("id", id);
            modelView.addObject("inicio", prestamo.getFechaInicio().toString());
            modelView.addObject("fin", prestamo.getFechaFin().toString());
            modelView.addObject("cedula", prestamo.getUsuario().getCedula());
            modelView.addObject("libros", libros);
            modelView.addObject("cantLibros", prestamoRepository.cantLibros(id));
        }
        modelView.setViewName("prestamoDetalles.html");
        return modelView;
    }

    //Endpoint para crear un préstamo al usar agregar_prestamo en prestamo_paq
    @PostMapping("/prestamos/crear")
    public ResponseEntity<String> crearPrestamo(String finString, Long cedula) {
        try{
            Date inicio = Date.valueOf(LocalDate.now()); //fecha de inicio del préstamo
            Date fin = Date.valueOf(finString); //fecha de fin del préstamo
            prestamoRepository.agregarPrestamo(inicio, fin, cedula);
            return ResponseEntity.ok("Préstamo creado");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error");
        }
    }

    //Endpoint para agregar los libros seleccionados en el checkbox al préstamo
    @PostMapping("/prestamos/agregarlibros")
    public ResponseEntity<String> agregarLibros(Long prestamo_id, String libros_IDs) {
        String[] libros = libros_IDs.split(",");
        boolean todos_disponibles = true;
        for(String ID : libros){
            try{
                prestamoRepository.agregarLibro(prestamo_id, Long.valueOf(ID));
            } catch (Exception e) {
                todos_disponibles = false;
            }
        }
        //Si algún libro no tiene disponibilidad, se agregan los otros y se notifica el problema
        if(todos_disponibles) return ResponseEntity.ok("Libros agregados");
        else return ResponseEntity.badRequest().body("Libros sin disponibilidad");
    }

    //Endpoint para eliminar un préstamo, se elimina en cascada los registros de prestamo_libro
    @DeleteMapping("/prestamos/eliminar/{id}")
    public ResponseEntity<?> deletePrestamo(@PathVariable("id") Long id) {
        prestamoRepository.eliminarPrestamo(id);
        return ResponseEntity.ok("Préstamo eliminado");
    }
}
