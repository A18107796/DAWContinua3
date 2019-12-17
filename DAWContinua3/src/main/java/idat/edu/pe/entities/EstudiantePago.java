package idat.edu.pe.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "estudiante_pagos")
@IdClass(EstudiantePagoID.class)
public class EstudiantePago {

	@Id
	private Long id_estudiante;
	
	@Id
	private Long id_pago;
	
	@Temporal(TemporalType.DATE)
	private Date fecha_pago;
	

	@Temporal(TemporalType.DATE)
	private Date fecha_venc;
	
	private String estado;
	

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_estudiante", referencedColumnName = "id", insertable = false, updatable = false)
	private Estudiante estudiante;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_pago", referencedColumnName = "id", insertable = false, updatable = false)
	private Pago pago;

	public Long getId_estudiante() {
		return id_estudiante;
	}

	public void setId_estudiante(Long id_estudiante) {
		this.id_estudiante = id_estudiante;
	}

	public Long getId_pago() {
		return id_pago;
	}

	public void setId_pago(Long id_pago) {
		this.id_pago = id_pago;
	}

	public Date getFecha_pago() {
		return fecha_pago;
	}

	public void setFecha_pago(Date fecha_pago) {
		this.fecha_pago = fecha_pago;
	}

	public Date getFecha_venc() {
		return fecha_venc;
	}

	public void setFecha_venc(Date fecha_venc) {
		this.fecha_venc = fecha_venc;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Estudiante getEstudiante() {
		return estudiante;
	}

	public void setEstudiante(Estudiante estudiante) {
		this.estudiante = estudiante;
	}

	public Pago getPago() {
		return pago;
	}

	public void setPago(Pago pago) {
		this.pago = pago;
	}

	@Override
	public String toString() {
		return "EstudiantePago [id_estudiante=" + id_estudiante + ", id_pago=" + id_pago + ", fecha_pago=" + fecha_pago
				+ ", fecha_venc=" + fecha_venc + ", estado=" + estado + ", estudiante=" + estudiante + ", pago=" + pago
				+ "]";
	}
	
	
	
	
}
