package idat.edu.pe.services;

import idat.edu.pe.entities.Especializacion;

public interface IEspecializacionService {

	public Especializacion findById(Long id);

	public Especializacion save(Especializacion especializacion);

	public void delete(Long id);
}
