package idat.edu.pe.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pagos")
public class Pago implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private Double monto; 

	private String descripcion;
	
	
	
	
	
	public Long getId() {
		return id;
	}





	public void setId(Long id) {
		this.id = id;
	}





	public Double getMonto() {
		return monto;
	}





	public void setMonto(Double monto) {
		this.monto = monto;
	}





	public String getDescripcion() {
		return descripcion;
	}





	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	


	@Override
	public String toString() {
		return "Pago [id=" + id + ", monto=" + monto + ", descripcion=" + descripcion + "]";
	}





	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
}
