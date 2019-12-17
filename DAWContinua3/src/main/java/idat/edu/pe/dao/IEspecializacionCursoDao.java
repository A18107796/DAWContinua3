package idat.edu.pe.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import idat.edu.pe.entities.Curso;
import idat.edu.pe.entities.Especializacion;
import idat.edu.pe.entities.EspecializacionCurso;



public interface IEspecializacionCursoDao extends JpaRepository<EspecializacionCurso, Long>{

	//@Query(value =  "SELECT * FROM distritos", nativeQuery = true )
	@Query("from Curso")
	public List<Curso> findAllCursos();
	
	@Query("from Especializacion")
	public List<Especializacion> findAllEspecializaciones();
	
	//@Query(value =  "SELECT * FROM distritos", nativeQuery = true )
	@Query(value = "select * from especializacion_cursos, especializaciones, cursos\r\n" + 
			"where cursos.id = especializacion_cursos.id_curso and especializaciones.id = especializacion_cursos.id_especializacion and\r\n" + 
			"especializacion_cursos.ciclo = ?1 and especializaciones.id = ?2", nativeQuery = true)
	public List<EspecializacionCurso> searchCursoCiclo(String ciclo, Long id);
		
}
