package idat.edu.pe.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import idat.edu.pe.dao.ICursoDao;
import idat.edu.pe.entities.Curso;

@Service
public class CursoServiceImpl implements ICursoService{

	@Autowired
	private ICursoDao cursoDao;
	
	
	@Override
	@Transactional(readOnly = true)
	public Curso findById(Long id) {
		return  cursoDao.findById(id).orElse(null);
	}

	@Override
	public Curso save(Curso curso) {
		return cursoDao.save(curso);
	}

	@Override
	public void delete(Long id) {
		 cursoDao.deleteById(id);
		
	}
		
}
