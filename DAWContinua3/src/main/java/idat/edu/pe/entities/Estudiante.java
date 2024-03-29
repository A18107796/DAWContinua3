package idat.edu.pe.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "estudiantes")
public class Estudiante implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty
	@NotNull
	@Column(nullable = false)
	private String nombres;

	@NotEmpty
	@Column(nullable = false)
	private String apellido_pa;

	@NotEmpty
	private String apellido_ma;
	@NotEmpty
	@Size(min = 8, max = 8, message = "El campo debe tener 8 digitos")
	private String dni;
	@NotEmpty
	private String sexo;

	@NotNull(message = "Seleccione su fecha de nacimiento")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fecha_nac;
	
	
	@NotNull(message = "Usted debe seleccionar un distrito")
	@ManyToOne
	@JoinColumn(name = "id_distrito")
	private Distrito distrito;
	
	@NotEmpty
	private String direccion;
	
	private String telefono;

	private String estado;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fecha_reg;

	
	

	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getNombres() {
		return nombres;
	}




	public void setNombres(String nombres) {
		this.nombres = nombres;
	}




	public String getApellido_pa() {
		return apellido_pa;
	}




	public void setApellido_pa(String apellido_pa) {
		this.apellido_pa = apellido_pa;
	}




	public String getApellido_ma() {
		return apellido_ma;
	}




	public void setApellido_ma(String apellido_ma) {
		this.apellido_ma = apellido_ma;
	}




	public String getDni() {
		return dni;
	}




	public void setDni(String dni) {
		this.dni = dni;
	}




	public String getSexo() {
		return sexo;
	}




	public void setSexo(String sexo) {
		this.sexo = sexo;
	}




	public Date getFecha_nac() {
		return fecha_nac;
	}




	public void setFecha_nac(Date fecha_nac) {
		this.fecha_nac = fecha_nac;
	}




	public Distrito getDistrito() {
		return distrito;
	}




	public void setDistrito(Distrito distrito) {
		this.distrito = distrito;
	}




	public String getDireccion() {
		return direccion;
	}




	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}




	public String getTelefono() {
		return telefono;
	}




	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}




	public String getEstado() {
		return estado;
	}




	public void setEstado(String estado) {
		this.estado = estado;
	}




	public Date getFecha_reg() {
		return fecha_reg;
	}




	public void setFecha_reg(Date fecha_reg) {
		this.fecha_reg = fecha_reg;
	}



	@Override
	public String toString() {
		return "Estudiante [id=" + id + ", nombres=" + nombres + ", apellido_pa=" + apellido_pa + ", apellido_ma="
				+ apellido_ma + ", dni=" + dni + ", sexo=" + sexo + ", fecha_nac=" + fecha_nac + ", distrito="
				+ distrito + ", direccion=" + direccion + ", telefono=" + telefono + ", estado=" + estado
				+ ", fecha_reg=" + fecha_reg + "]";
	}




	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
