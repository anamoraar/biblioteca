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
    @Autowired
    private PrestamoRepository prestamoRepository;
    @Autowired
    private PrestamoLibroRepository prestamoLibroRepository;
    @Autowired
    private UsuarioRepository usuarioRepository;
    @Autowired
    private LibroRepository libroRepository;

    @GetMapping("/prestamos")
    public ModelAndView showAllPrestamos() {
        ModelAndView modelView = new ModelAndView();
        List<Prestamo> prestamos = prestamoRepository.findAll();
        modelView.addObject("prestamos", prestamos);
        modelView.setViewName("prestamos.html");
        return modelView;
    }

    @GetMapping("/prestamos/crearprestamo")
    public ModelAndView addPrestamoForm() {
        ModelAndView modelView = new ModelAndView();
        List<Usuario> usuarios = usuarioRepository.findAll();
        modelView.addObject("usuarios", usuarios);
        modelView.setViewName("addPrestamo.html");
        return modelView;
    }

    @GetMapping("/prestamos/librosform")
    public ModelAndView addBooksForm(@RequestParam Long id) {
        ModelAndView modelView = new ModelAndView();
        List<Libro> libros = libroRepository.findAll();
        modelView.addObject("libros", libros);
        modelView.addObject("prestamo_id", id);
        modelView.setViewName("addBooksPrestamo.html");
        return modelView;
    }

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
            modelView.addObject("id", id);
            modelView.addObject("inicio", prestamo.getFechaInicio().toString());
            modelView.addObject("fin", prestamo.getFechaFin().toString());
            modelView.addObject("cedula", prestamo.getUsuario().getCedula());
            modelView.addObject("libros", libros);
        }
        modelView.setViewName("prestamoDetalles.html");
        return modelView;
    }

    @PostMapping("/prestamos/crear")
    public ResponseEntity<String> crearPrestamo(String finString, Long cedula) {
        try{
            Date inicio = Date.valueOf(LocalDate.now());
            Date fin = Date.valueOf(finString);
            prestamoRepository.agregarPrestamo(inicio, fin, cedula);
            return ResponseEntity.ok("Préstamo creado");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error");
        }
    }

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
        if(todos_disponibles) return ResponseEntity.ok("Libros agregados");
        else return ResponseEntity.badRequest().body("Error");
    }

    @DeleteMapping("/prestamos/eliminar/{id}")
    public ResponseEntity<?> deletePrestamo(@PathVariable("id") Long id) {
        prestamoRepository.eliminarPrestamo(id);
        return ResponseEntity.ok("Préstamo eliminado");
    }
}
