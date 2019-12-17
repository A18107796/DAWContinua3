package idat.edu.pe.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Estudiante;



public interface IEstudianteService {
	public List<Estudiante> findAll();

	public Page<Estudiante> findAll(Pageable pageable);
	
	public Estudiante findById(Long id);
	
	public Estudiante save(Estudiante estudiante);
	
	public void delete(Long id);
	
	public Estudiante deleteLogical(Estudiante estudiante);
	
	public List<Distrito> findAllDistritos();
}
