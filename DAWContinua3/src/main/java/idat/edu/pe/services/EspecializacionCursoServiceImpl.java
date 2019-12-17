package idat.edu.pe.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import idat.edu.pe.dao.IEspecializacionCursoDao;
import idat.edu.pe.entities.Curso;
import idat.edu.pe.entities.Especializacion;
import idat.edu.pe.entities.EspecializacionCurso;

@Service
public class EspecializacionCursoServiceImpl implements IEspecializacionCursoService {

	
	@Autowired
	private IEspecializacionCursoDao espcursoDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<EspecializacionCurso> findAll() {
		return (List<EspecializacionCurso>) espcursoDao.findAll();
	}

	@Override
	public List<Curso> findAllCursos() {
		// TODO Auto-generated method stub
		return espcursoDao.findAllCursos();
	}

	@Override
	public List<Especializacion> findAllEspecializaciones() {
		return espcursoDao.findAllEspecializaciones();
	}
	
	@Override
	public List<EspecializacionCurso> searchCursoCiclo(String ciclo, Long id) {
		return espcursoDao.searchCursoCiclo(ciclo, id);
	}
	
}
