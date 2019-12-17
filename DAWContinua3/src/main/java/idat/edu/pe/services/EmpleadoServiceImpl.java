package idat.edu.pe.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import idat.edu.pe.dao.IEmpleadoDao;
import idat.edu.pe.entities.Distrito;
import idat.edu.pe.entities.Empleado;


@Service
public class EmpleadoServiceImpl implements IEmpleadoService{
	
	@Autowired
	private IEmpleadoDao empleadoDao; 
	
	
	@Override
	public List<Empleado> findAll() {
		return (List<Empleado>) empleadoDao.findAll();
	}


	

	@Override
	@Transactional
	public Empleado save(Empleado empleado) {
		// TODO Auto-generated method stub
		return empleadoDao.save(empleado);
	}


	@Override
	public void delete(Long id) {
		empleadoDao.deleteById(id);
	}
	

	@Override
	public Empleado deleteLogical(Empleado empleado) {
		return save(empleado);
		
	}
	
	@Override
	public List<Distrito> findAllDistritos() {
			return empleadoDao.findAllDistritos();
	}




	@Override
	public Empleado findById(Long id) {
		return empleadoDao.findById(id).orElse(null);
	}



}
