package idat.edu.pe.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


public class EspecializacionCursoID implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column( name = "id_especializacion")
	private Long id_especializacion;
	
	@Column(name = "id_curso")
	private Long id_curso;

	public Long getId_especializacion() {
		return id_especializacion;
	}

	public void setId_especializacion(Long id_especializacion) {
		this.id_especializacion = id_especializacion;
	}

	public Long getId_curso() {
		return id_curso;
	}

	public void setId_curso(Long id_curso) {
		this.id_curso = id_curso;
	}
	
	
	
}
