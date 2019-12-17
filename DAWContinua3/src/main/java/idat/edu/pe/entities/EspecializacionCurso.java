package idat.edu.pe.entities;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "especializacion_cursos")
@IdClass(EspecializacionCursoID.class)
public class EspecializacionCurso {
	
	
	@Id
	private Long id_especializacion;
	
	@Id
	private Long id_curso;
	
	private String ciclo;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_especializacion", referencedColumnName = "id", insertable = false, updatable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
	private Especializacion especializacion;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_curso", referencedColumnName = "id", insertable = false, updatable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
	private Curso curso;
	
	public EspecializacionCurso() {
		// TODO Auto-generated constructor stub
	}

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

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}

	public Especializacion getEspecializacion() {
		return especializacion;
	}

	public void setEspecializacion(Especializacion especializacion) {
		this.especializacion = especializacion;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	@Override
	public String toString() {
		return "EspecializacionCurso [id_especializacion=" + id_especializacion + ", id_curso=" + id_curso + ", ciclo="
				+ ciclo + ", especializacion=" + especializacion + ", curso=" + curso + "]";
	}
	
	

	
}
