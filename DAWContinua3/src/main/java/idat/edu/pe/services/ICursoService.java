package idat.edu.pe.services;

import idat.edu.pe.entities.Curso;

public interface ICursoService {

	public Curso findById(Long id);

	public Curso save(Curso curso);

	public void delete(Long id);
}
