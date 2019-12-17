package idat.edu.pe.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;



public interface IEmpleadoService {
	
	public List<Empleado> findAll();

	public Empleado findById(Long id);
	
	public Empleado save(Empleado empleado);
	
	public void delete(Long id);
	
	public Empleado deleteLogical(Empleado empleado);
	
	public List<Distrito> findAllDistritos();
}
