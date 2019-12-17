package idat.edu.pe.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import idat.edu.pe.dao.IEstudianteDao;
import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Estudiante;



@Service
public class EstudianteServiceImpl implements IEstudianteService{
	
	@Autowired
	private IEstudianteDao estudianteDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Estudiante> findAll() {
		return (List<Estudiante>)estudianteDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<Estudiante> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return estudianteDao.findAll(pageable);
	}

	@Override
	@Transactional(readOnly = true)
	public Estudiante findById(Long id) {
		return estudianteDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public Estudiante save(Estudiante estudiante) {
		// TODO Auto-generated method stub
		return estudianteDao.save(estudiante);
	}

	@Override
	public void delete(Long id) {
		estudianteDao.deleteById(id);
	}

	@Override
	public Estudiante deleteLogical(Estudiante estudiante) {
		return estudianteDao.save(estudiante);
	}

	@Override
	public List<Distrito> findAllDistritos() {
		return estudianteDao.findAllDistritos();
	}

}
