package idat.edu.pe.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import idat.edu.pe.entities.Matricula;



public interface IMatriculaService {
		
	public List<Matricula> findAll();
	
	public Page<Matricula> findAll(Pageable pageable);
	
	public Matricula findById(Long id);
	
	public Matricula save(Matricula matricula);
	
	public void delete(Long id);
	
	public Matricula deleteLogical(Matricula matricula);
}
