/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.automoviles.entidades;

import java.io.Serializable;
import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

/**
 *
 * @author josediaz
 */
@Entity
@Cacheable
public class Modelo implements Serializable {
	
	private static final long serialVersionUID = -2662121846406869911L;
	
	@Id @GeneratedValue
	private Long id;
	@NotNull(message="La descripcion del modelo no puede ser nulo")
	private String descripcion;
	private Integer potencia;
	@ManyToOne
	private Marca marca;
	
	@Override
	public String toString() {
		return descripcion;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Marca getMarca() {
		return marca;
	}
	public void setMarca(Marca marca) {
		this.marca = marca;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Modelo))
			return false;
		Modelo other = (Modelo) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public Integer getPotencia() {
		return potencia;
	}

	public void setPotencia(Integer potencia) {
		this.potencia = potencia;
	}

}