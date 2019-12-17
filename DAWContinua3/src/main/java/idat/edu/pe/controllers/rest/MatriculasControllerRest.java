package idat.edu.pe.controllers.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import idat.edu.pe.entities.Estudiante;
import idat.edu.pe.services.EstudianteServiceImpl;




@RestController
@RequestMapping("/api")
public class MatriculasControllerRest {
	
	@Autowired
	private EstudianteServiceImpl servicioEstudiante;
	
	@GetMapping("/getEstudiantes")
	public List<Estudiante> getEstudiantes() {
		return servicioEstudiante.findAll();
	}
}
