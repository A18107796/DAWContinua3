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
import idat.edu.pe.entities.Especializacion;
import idat.edu.pe.entities.Estudiante;
import idat.edu.pe.entities.Matricula;
import idat.edu.pe.services.EmpleadoServiceImpl;
import idat.edu.pe.services.EspecializacionCursoServiceImpl;
import idat.edu.pe.services.EspecializacionServiceImpl;
import idat.edu.pe.services.EstudianteServiceImpl;
import idat.edu.pe.services.MatriclaServiceImpl;

@Controller
@RequestMapping("/matriculas")
public class MatriculaController {
	
	@Autowired
	private MatriclaServiceImpl servicio;
	
	
	@Autowired
	private EmpleadoServiceImpl servicioEmp;
	
	@Autowired
	private EstudianteServiceImpl servicioEstudiantes;
	
	@Autowired
	private EspecializacionCursoServiceImpl servicioEsp;
	
	@RequestMapping("/listarTodo")
	public String listar(Model model) {
		List<Matricula> lista = servicio.findAll();
		model.addAttribute("matriculas", lista);
		return "/moduloMatriculas/listaMatriculas";
	}
	
	@GetMapping("/nuevo")
	public String nuevo(Model model) {
		Matricula matricula = new Matricula();
		List<Estudiante> estudiantes = servicioEstudiantes.findAll();
		List<Especializacion> especializaciones = servicioEsp.findAllEspecializaciones();
		model.addAttribute("titulo", "Ficha de Matricula");
		model.addAttribute("matricula", matricula);
		model.addAttribute("estudiantes", estudiantes);
		model.addAttribute("especializaciones", especializaciones);
		return "/moduloMatriculas/formMatricula";
	}
	
	
	@PostMapping(value = "/guardar")
	public String guardar(Matricula matricula) {
		if(matricula.getId_matricula() == null) {
			matricula.setEstado("Pendiente");
			matricula.setEmpleado(servicioEmp.findById((long) 10));
			matricula.setFecha_reg(new Date());
		}
		
		
		servicio.save(matricula);
	    return "redirect:/matriculas/listarTodo";
	}
	


	
	
}
