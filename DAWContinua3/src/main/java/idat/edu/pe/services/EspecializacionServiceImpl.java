package idat.edu.pe.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import idat.edu.pe.dao.IEspecializacionDao;
import idat.edu.pe.entities.Especializacion;



@Service
public class EspecializacionServiceImpl implements IEspecializacionService{

	@Autowired
	private IEspecializacionDao especializacionDao;
	
	@Override
	public Especializacion findById(Long id) {
		return especializacionDao.findById(id).orElse(null);
	}

	@Override
	public Especializacion save(Especializacion especializacion) {
		return especializacionDao.save(especializacion);
	}

	@Override
	public void delete(Long id) {
		especializacionDao.deleteById(id);
		
	}

	
}
