package com.p1.biblioteca.controllers;

import com.p1.biblioteca.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.p1.biblioteca.model.*;

import java.util.List;
import java.util.Optional;

@RestController
public class LibroController {

    @Autowired
    private LibroRepository libroRepository;
    @Autowired
    private GeneroRepository generoRepository;
    @Autowired
    private AutorRepository autorRepository;
    @Autowired
    private EditorialRepository editorialRepository;
    @Autowired
    private PrestamoLibroRepository prestamoLibroRepository;

    @GetMapping("/libros")
    public ModelAndView showAllBooks() {
        ModelAndView modelView = new ModelAndView();
        List<Libro> libros = libroRepository.findAll();
        modelView.addObject("libros", libros);
        modelView.setViewName("libros.html");
        return modelView;
    }

    @GetMapping("/libros/crearlibro")
    public ModelAndView addBookForm(){
        ModelAndView modelView = new ModelAndView();
        List<Autor> autores = autorRepository.findAll();
        List<Editorial> editoriales = editorialRepository.findAll();
        List<Genero> generos = generoRepository.findAll();
        modelView.addObject("autores",autores);
        modelView.addObject("editoriales",editoriales);
        modelView.addObject("generos",generos);
        modelView.setViewName("addLibro.html");
        return modelView;
    }

    @GetMapping("/libros/detalles")
    public ModelAndView showBookDetails(@RequestParam Long id) {
        ModelAndView modelView = new ModelAndView();
        Optional<Libro> libroOptional = libroRepository.findLibroById(id);
        if (libroOptional.isPresent()) {
            Libro libro = libroOptional.get();
            //Agregar los atributos para mostrarlos en la vista
            modelView.addObject("id", id);
            modelView.addObject("titulo", libro.getTitulo());
            modelView.addObject("anyo", libro.getAnyoPublicacion());
            modelView.addObject("descripcion", libro.getDescripcion());
            modelView.addObject("disponibilidad", libro.getDisponibilidad());
            modelView.addObject("autor", libro.getAutor().getFullName());
            modelView.addObject("editorial", libro.getEditorial().getNombre());
            modelView.addObject("genero", libro.getGenero().getNombre());
        }
        modelView.setViewName("libroDetalles.html");
        return modelView;
    }

    @GetMapping("/libros/editarlibro")
    public ModelAndView editLibroForm(@RequestParam Long id){
        ModelAndView modelView = new ModelAndView();
        Optional<Libro> libro = libroRepository.findLibroById(id);
        List<Autor> autores = autorRepository.findAll();
        List<Editorial> editoriales = editorialRepository.findAll();
        List<Genero> generos = generoRepository.findAll();
        if(libro.isPresent())
            modelView.addObject("id", id);
        modelView.addObject("autores",autores);
        modelView.addObject("editoriales",editoriales);
        modelView.addObject("generos",generos);
        modelView.setViewName("editLibro.html");
        return modelView;
    }

    @PostMapping("/libros/agregar")
    public ResponseEntity<String> agregarLibro(@Param("p_titulo") String titulo, @Param("p_anyo_publicacion") Integer publicacion,
                                               @Param("p_descripcion") String descripcion, @Param("p_disponibilidad") Integer disponibilidad,
                                               @Param("p_autor_id") Long autor_id, @Param("p_genero_id") Long genero_id,
                                               @Param("p_editorial_id") Long editorial_id) {
        try{
            libroRepository.agregarLibro(titulo, publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id);
            return ResponseEntity.ok("Libro agregado");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error");
        }
    }

    @PutMapping("/libros/update/{id}")
    public ResponseEntity<?> updateBook(@Param("p_titulo") String titulo, @Param("p_anyo_publicacion") Integer publicacion,
                                        @Param("p_descripcion") String descripcion, @Param("p_disponibilidad") Integer disponibilidad,
                                        @Param("p_autor_id") Long autor_id, @Param("p_genero_id") Long genero_id,
                                        @Param("p_editorial_id") Long editorial_id, @PathVariable("id") Long id){
        Optional<Libro> libroOptional = libroRepository.findLibroById(id);
        if(libroOptional.isPresent()){
            if(titulo.equals("") || descripcion.equals("") || publicacion == null || autor_id == null || genero_id == null || editorial_id == null)
                return ResponseEntity.badRequest().body("Llene todos los campos");
            libroRepository.actualizarLibro(id, titulo, publicacion, descripcion, disponibilidad, autor_id, genero_id, editorial_id);
            return ResponseEntity.ok("Libro actualizado");
        }
        return ResponseEntity.badRequest().body("Error");
    }

    @DeleteMapping("/libros/eliminar/{id}")
    public ResponseEntity<?> deleteBook(@PathVariable("id") Long id) {
        List<PrestamoLibro> prestamoLibros = prestamoLibroRepository.findPrestamoLibroByLibro(id);
        if(prestamoLibros.isEmpty()){
            libroRepository.eliminarLibro(id);
            return ResponseEntity.ok("Libro eliminado");
        }
        return ResponseEntity.badRequest().body("Libro tiene préstamos");
    }

}
