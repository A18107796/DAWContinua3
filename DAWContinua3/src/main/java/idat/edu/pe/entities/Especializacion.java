package idat.edu.pe.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "especializaciones")
public class Especializacion implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String cod_especializacion;
	
	private String nombre;
	
	
	
	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getCod_especializacion() {
		return cod_especializacion;
	}



	public void setCod_especializacion(String cod_especializacion) {
		this.cod_especializacion = cod_especializacion;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	
	
	@Override
	public String toString() {
		return "Especializacion [id=" + id + ", cod_especializacion=" + cod_especializacion + ", nombre=" + nombre
				+ "]";
	}



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
