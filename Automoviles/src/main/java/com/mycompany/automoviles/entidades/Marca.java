/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.automoviles.entidades;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 *
 * @author josediaz
 */
@Entity
@Cacheable
public class Marca implements Serializable {

	private static final long serialVersionUID = -1918683551211451197L;
	
	@Id @GeneratedValue
	private Long id;
	private String nombre;
	@OneToMany(mappedBy="marca")
	@LazyCollection(LazyCollectionOption.EXTRA)
	private List<Modelo> modelos;
	
	public Marca() {
	}
	
	public Marca(Long id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public Marca(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return nombre;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public List<Modelo> getModelos() {
		return modelos;
	}
	public void setModelos(List<Modelo> modelos) {
		this.modelos = modelos;
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
		if (!(obj instanceof Marca))
			return false;
		Marca other = (Marca) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
        
        
        
        
}
