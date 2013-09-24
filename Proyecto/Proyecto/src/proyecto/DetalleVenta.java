/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto;

/**
 *
 * @author miguel
 */
public class DetalleVenta {
    String CodGrupoEstudio;
    int Cantidad;
    double SubTotal;

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getCodGrupoEstudio() {
        return CodGrupoEstudio;
    }

    public void setCodGrupoEstudio(String CodGrupoEstudio) {
        this.CodGrupoEstudio = CodGrupoEstudio;
    }

    public double getSubTotal() {
        return SubTotal;
    }

    public void setSubTotal(double SubTotal) {
        this.SubTotal = SubTotal;
    }
    
}
