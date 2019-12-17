package idat.edu.pe.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Estudiante;


public interface IEstudianteDao extends JpaRepository<Estudiante, Long>{

	//@Query(value =  "SELECT * FROM distritos", nativeQuery = true )
	@Query("from Distrito")
	public List<Distrito> findAllDistritos();
}
