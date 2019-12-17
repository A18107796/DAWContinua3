package idat.edu.pe.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import idat.edu.pe.entities.Curso;
import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;
import idat.edu.pe.entities.Especializacion;
import idat.edu.pe.services.CursoServiceImpl;
import idat.edu.pe.services.EspecializacionCursoServiceImpl;
import idat.edu.pe.services.EspecializacionServiceImpl;

@Controller
@RequestMapping("/espcur")
public class EspCurController {
	
	@Autowired
	private EspecializacionCursoServiceImpl servicioEspCur;
	
	@Autowired
	private CursoServiceImpl servicioCurso;
	
	@Autowired
	private EspecializacionServiceImpl servicioEsp;
	
	@RequestMapping("/listarTodo")
	public String listar(Model model) {
		List<Curso> cursos = servicioEspCur.findAllCursos();
		List<Especializacion> especializaciones = servicioEspCur.findAllEspecializaciones();
		Especializacion esp = new Especializacion();
		Curso curso= new Curso();
		model.addAttribute("cursos", cursos);
		model.addAttribute("especializaciones", especializaciones);
		model.addAttribute("especializacion", esp);
		model.addAttribute("curso", curso);
		return "/moduloEspCur/listaEspCur";
	}
	
	@PostMapping(value = "/guardarEsp")
	public String guardarEsp(Especializacion especializacion) {
		servicioEsp.save(especializacion);
	    return "redirect:/espcur/listarTodo";
	}
	
	@PostMapping(value = "/guardarCurso")
	public String guardarCurso(Curso curso) {
		servicioCurso.save(curso);
	    return "redirect:/espcur/listarTodo";
	}
	
	@GetMapping("/nuevo")
	public String nuevo(Model model) {
		Especializacion obj = new Especializacion();
		
		model.addAttribute("titulo", "Registro de empleados");
		model.addAttribute("especializacion", obj);
		return "/moduloEmpleados/crearEmpleado";
	}
}
