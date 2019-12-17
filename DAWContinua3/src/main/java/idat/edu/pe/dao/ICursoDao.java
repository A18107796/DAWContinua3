package idat.edu.pe.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import idat.edu.pe.entities.Curso;



public interface ICursoDao  extends JpaRepository<Curso, Long>{

}
