/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

/**
 *
 * @author alumnos
 */
public class DetalleCompra {
    private int IdDetalleCompra;
    private int IdCompra;
    private String DescripcionProducto;
    private Double PrecioUnitario;
    private int Cantidad;

    /**
     * @return the IdDetalleCompra
     */
    public int getIdDetalleCompra() {
        return IdDetalleCompra;
    }

    /**
     * @param IdDetalleCompra the IdDetalleCompra to set
     */
    public void setIdDetalleCompra(int IdDetalleCompra) {
        this.IdDetalleCompra = IdDetalleCompra;
    }

    /**
     * @return the IdCompra
     */
    public int getIdCompra() {
        return IdCompra;
    }

    /**
     * @param IdCompra the IdCompra to set
     */
    public void setIdCompra(int IdCompra) {
        this.IdCompra = IdCompra;
    }

    /**
     * @return the DescripcionProducto
     */
    public String getDescripcionProducto() {
        return DescripcionProducto;
    }

    /**
     * @param DescripcionProducto the DescripcionProducto to set
     */
    public void setDescripcionProducto(String DescripcionProducto) {
        this.DescripcionProducto = DescripcionProducto;
    }

    /**
     * @return the PrecioUnitario
     */
    public Double getPrecioUnitario() {
        return PrecioUnitario;
    }

    /**
     * @param PrecioUnitario the PrecioUnitario to set
     */
    public void setPrecioUnitario(Double PrecioUnitario) {
        this.PrecioUnitario = PrecioUnitario;
    }

    /**
     * @return the Cantidad
     */
    public int getCantidad() {
        return Cantidad;
    }

    /**
     * @param Cantidad the Cantidad to set
     */
    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
    
}
