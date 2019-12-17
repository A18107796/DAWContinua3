package idat.edu.pe.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;



public interface IEmpleadoDao extends JpaRepository<Empleado, Long>{
		

	//@Query(value =  "SELECT * FROM distritos", nativeQuery = true )
	@Query("from Distrito")
	public List<Distrito> findAllDistritos();
	
}	
