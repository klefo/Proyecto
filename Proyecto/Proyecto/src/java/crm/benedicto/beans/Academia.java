/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

/**
 *
 * @author Miguel Corzo
 */
public class Academia {
    private int IdAcademia;
    private String Descripcion;
    private String Direccion;
    private String Telefono;
    private String Estado;

    /**
     * @return the IdAcademia
     */
    public int getIdAcademia() {
        return IdAcademia;
    }

    /**
     * @param IdAcademia the IdAcademia to set
     */
    public void setIdAcademia(int IdAcademia) {
        this.IdAcademia = IdAcademia;
    }

    /**
     * @return the Descripcion
     */
    public String getDescripcion() {
        return Descripcion;
    }

    /**
     * @param Descripcion the Descripcion to set
     */
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    /**
     * @return the Direccion
     */
    public String getDireccion() {
        return Direccion;
    }

    /**
     * @param Direccion the Direccion to set
     */
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    /**
     * @return the Telefono
     */
    public String getTelefono() {
        return Telefono;
    }

    /**
     * @param Telefono the Telefono to set
     */
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    /**
     * @return the Estado
     */
    public String getEstado() {
        return Estado;
    }

    /**
     * @param Estado the Estado to set
     */
    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
}
