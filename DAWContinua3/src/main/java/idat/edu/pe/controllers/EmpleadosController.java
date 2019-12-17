package idat.edu.pe.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;
import idat.edu.pe.services.DistritoServiceImpl;
import idat.edu.pe.services.EmpleadoServiceImpl;

@Controller
@RequestMapping("/empleados")
public class EmpleadosController {

	@Autowired
	private EmpleadoServiceImpl servicio;
	
	@Autowired
	private DistritoServiceImpl servicioDistritos;
	
	@RequestMapping("/listarTodo")
	public String listar(Model model) {
		List<Empleado> lista = servicio.findAll();
		model.addAttribute("listaEmp", lista);
		return "/moduloEmpleados/listaEmpleados";
	}
	
	@RequestMapping("/inicio")
	public String index() {
		return "/index";
	}
	
	@GetMapping("/nuevo")
	public String nuevo(Model model) {
		Empleado empleado = new Empleado();
		List<Distrito> distritos = servicio.findAllDistritos();
		
		model.addAttribute("titulo", "Registro de empleados");
		model.addAttribute("empleado", empleado);
		model.addAttribute("distritos", distritos);
		
		return "/moduloEmpleados/crearEmpleado";
	}
	
	
	@PostMapping(value = "/guardar")
	public String guardar(Empleado empleado) {
		servicio.save(empleado);
	    return "redirect:/empleados/listarTodo";
	}
	
	
	@GetMapping("/editar={id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Empleado empleado = servicio.findById(id);
		List<Distrito> distritos = servicio.findAllDistritos();
		model.addAttribute("titulo", "Editar empleado ");
		model.addAttribute("empleado", empleado);
		model.addAttribute("distritos", distritos);
		
		return "/moduloEmpleados/crearEmpleado";
	}
	
	@RequestMapping("/eliminar/{id}")
	public String eliminarPelicula(@PathVariable(name = "id") Long id) {
		servicio.delete(id);
	    return "redirect:/empleados/listarTodo";       
	}
}
