package idat.edu.pe.services;

import java.util.List;

import idat.edu.pe.entities.Curso;
import idat.edu.pe.entities.Especializacion;
import idat.edu.pe.entities.EspecializacionCurso;




public interface IEspecializacionCursoService {
	public List<EspecializacionCurso> findAll();

	public List<Curso> findAllCursos();
	
	public List<Especializacion> findAllEspecializaciones();
	
	public List<EspecializacionCurso> searchCursoCiclo(String ciclo, Long id);
}
