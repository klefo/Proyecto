/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

/**
 *
 * @author HCornejo
 */
public class Cliente {
    protected String nombre;
    protected String apellidopaterno;
    protected String apellidomaterno;
    protected String email;
    protected String dni;
    protected String telefono;
    protected String celular;
    protected String fechacontacto;

    public Cliente(String nombre, String apellidopaterno, String apellidomaterno, String email, String dni, String telefono, String celular, String fechacontacto) {
        this.nombre = nombre;
        this.apellidopaterno = apellidopaterno;
        this.apellidomaterno = apellidomaterno;
        this.email = email;
        this.dni = dni;
        this.telefono = telefono;
        this.celular = celular;
        this.fechacontacto = fechacontacto;
    }
    
    public Cliente(){}
    

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellidopaterno
     */
    public String getApellidopaterno() {
        return apellidopaterno;
    }

    /**
     * @param apellidopaterno the apellidopaterno to set
     */
    public void setApellidopaterno(String apellidopaterno) {
        this.apellidopaterno = apellidopaterno;
    }

    /**
     * @return the apellidomaterno
     */
    public String getApellidomaterno() {
        return apellidomaterno;
    }

    /**
     * @param apellidomaterno the apellidomaterno to set
     */
    public void setApellidomaterno(String apellidomaterno) {
        this.apellidomaterno = apellidomaterno;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the dni
     */
    public String getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(String dni) {
        this.dni = dni;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the celular
     */
    public String getCelular() {
        return celular;
    }

    /**
     * @param celular the celular to set
     */
    public void setCelular(String celular) {
        this.celular = celular;
    }

    /**
     * @return the fechacontacto
     */
    public String getFechacontacto() {
        return fechacontacto;
    }

    /**
     * @param fechacontacto the fechacontacto to set
     */
    public void setFechacontacto(String fechacontacto) {
        this.fechacontacto = fechacontacto;
    }
    
}
