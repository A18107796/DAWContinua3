package idat.edu.pe.controllers;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;
import idat.edu.pe.entities.Estudiante;
import idat.edu.pe.services.DistritoServiceImpl;
import idat.edu.pe.services.EstudianteServiceImpl;

@Controller
@RequestMapping("/estudiantes")
public class EstudiantesController {
	
	@Autowired
	private EstudianteServiceImpl servicio;
	
	@Autowired
	private DistritoServiceImpl servicioDistrito;
	
	@RequestMapping("/listarTodo")
	public String listar(Model model) {
		List<Estudiante> lista = servicio.findAll();
		model.addAttribute("listaEst", lista);
		return "/moduloEstudiantes/listaEstudiantes";
	}
	@RequestMapping("/inicio")
	public String index() {
		return "/index";
	}
	
	@GetMapping("/nuevo")
	public String nuevo(Model model) {
		Estudiante estudiante= new Estudiante();

		List<Distrito> distritos = servicioDistrito.listarDistritos();
		
		model.addAttribute("titulo", "Registro de Estudiantes");
		model.addAttribute("estudiante", estudiante);
		model.addAttribute("distritos", distritos);
		
		return "/moduloEstudiantes/crearEstudiante";
	}
	
	
	@PostMapping(value = "/guardar")
	public String guardar(Estudiante estudiante) {
		
		if(estudiante.getId() == null) {
			estudiante.setEstado("Activo");
			estudiante.setFecha_reg(new Date());
		}
		servicio.save(estudiante);
	    return "redirect:/estudiantes/listarTodo";
	}
	
	
	@GetMapping("/editar={id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Estudiante estudiante = servicio.findById(id);
		List<Distrito> distritos = servicio.findAllDistritos();
		model.addAttribute("titulo", "Editar Estudiante ");
		model.addAttribute("estudiante", estudiante);
		model.addAttribute("distritos", distritos);
		
		return "/moduloEstudiantes/crearEstudiante";
	}
	
	@RequestMapping("/eliminar/{id}")
	public String eliminarPelicula(@PathVariable(name = "id") Long id) {
		servicio.delete(id);
	    return "redirect:/estudiantes/listarTodo";       
	}
}
