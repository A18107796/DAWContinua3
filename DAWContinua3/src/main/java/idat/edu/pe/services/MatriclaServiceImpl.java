package idat.edu.pe.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import idat.edu.pe.dao.IMatriculaDao;
import idat.edu.pe.entities.Matricula;
@Service
public class MatriclaServiceImpl implements IMatriculaService{
	
	@Autowired
	private IMatriculaDao matriculaDao;
	
	
	@Override
	@Transactional(readOnly = true)
	public List<Matricula> findAll() {
		return (List<Matricula>)matriculaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<Matricula> findAll(Pageable pageable) {
		return matriculaDao.findAll(pageable);
	}

	@Override
	@Transactional(readOnly = true)
	public Matricula findById(Long id) {
		return matriculaDao.findById(id).orElse(null);
	}

	@Override
	public Matricula save(Matricula matricula) {

		return matriculaDao.save(matricula);
	}

	@Override
	public void delete(Long id) {
		matriculaDao.deleteById(id);
		
	}

	@Override
	public Matricula deleteLogical(Matricula matricula) {
		// TODO Auto-generated method stub
		return null;
	}

}
