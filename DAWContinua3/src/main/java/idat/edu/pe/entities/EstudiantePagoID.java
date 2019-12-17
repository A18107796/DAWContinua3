package idat.edu.pe.entities;

import java.io.Serializable;

import javax.persistence.Column;

public class EstudiantePagoID implements Serializable{
	
	
	@Column(name = "id_estudiante")
	private Long id_estudiante;
	
	
	@Column(name = "id_pago")
	private Long id_pago;

	
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
