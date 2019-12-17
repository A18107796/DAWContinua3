package idat.edu.pe.entities;

import java.io.Serializable;
import java.util.Date;

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
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "matriculas")
public class Matricula implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_matricula;
	
	@ManyToOne
	@JoinColumn(name = "id_empleado")
	private Empleado empleado;
	
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_estudiante")
	@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
	private Estudiante estudiante;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_especializacion")
	@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
	private Especializacion especializacion;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fecha_reg;
	
	private String estado;

	public Long getId_matricula() {
		return id_matricula;
	}

	public void setId_matricula(Long id_matricula) {
		this.id_matricula = id_matricula;
	}

	public Empleado getEmpleado() {
		return empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	public Estudiante getEstudiante() {
		return estudiante;
	}

	public void setEstudiante(Estudiante estudiante) {
		this.estudiante = estudiante;
	}

	public Especializacion getEspecializacion() {
		return especializacion;
	}

	public void setEspecializacion(Especializacion especializacion) {
		this.especializacion = especializacion;
	}

	public Date getFecha_reg() {
		return fecha_reg;
	}

	public void setFecha_reg(Date fecha_reg) {
		this.fecha_reg = fecha_reg;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Matricula [id_matricula=" + id_matricula + ", empleado=" + empleado + ", estudiante=" + estudiante
				+ ", especializacion=" + especializacion + ", fecha_reg=" + fecha_reg + ", estado=" + estado + "]";
	}

		
}
