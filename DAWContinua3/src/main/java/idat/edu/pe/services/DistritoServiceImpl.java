package idat.edu.pe.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import idat.edu.pe.dao.IDistritoDao;
import idat.edu.pe.entities.Distrito;

@Service
public class DistritoServiceImpl {

		@Autowired
		private IDistritoDao distritoDao;
		
		public DistritoServiceImpl() {
			// TODO Auto-generated constructor stub
		}
		
		public List<Distrito> listarDistritos(){
			return (List<Distrito>) distritoDao.findAll();
		}
}
