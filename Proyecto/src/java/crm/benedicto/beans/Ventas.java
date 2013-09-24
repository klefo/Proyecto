/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

/**
 *
 * @author YICELA
 */
public class Ventas {
    
    private String idVentas;
    private String empresa;
    private String fechEmision;
    private String fechVencimiento;
    private String fechPago;
    private String moneda;
    private double total;
    private double subtotal;
    private String observaciones;

    
            
//    public void calcularTotal(double igv){
//        igv=0.18;
//        this.setTotal(this.getSubtotal() * igv);
        
    

    /**
     * @return the idVentas
     */
    public String getIdVentas() {
        return idVentas;
    }

    /**
     * @param idVentas the idVentas to set
     */
    public void setIdVentas(String idVentas) {
        this.idVentas = idVentas;
    }

    /**
     * @return the empresa
     */
    public String getEmpresa() {
        return empresa;
    }

    /**
     * @param empresa the empresa to set
     */
    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    /**
     * @return the fechEmision
     */
    public String getFechEmision() {
        return fechEmision;
    }

    /**
     * @param fechEmision the fechEmision to set
     */
    public void setFechEmision(String fechEmision) {
        this.fechEmision = fechEmision;
    }

    /**
     * @return the fechVencimiento
     */
    public String getFechVencimiento() {
        return fechVencimiento;
    }

    /**
     * @param fechVencimiento the fechVencimiento to set
     */
    public void setFechVencimiento(String fechVencimiento) {
        this.fechVencimiento = fechVencimiento;
    }

    /**
     * @return the fechPago
     */
    public String getFechPago() {
        return fechPago;
    }

    /**
     * @param fechPago the fechPago to set
     */
    public void setFechPago(String fechPago) {
        this.fechPago = fechPago;
    }

    /**
     * @return the moneda
     */
    public String getMoneda() {
        return moneda;
    }

    /**
     * @param moneda the moneda to set
     */
    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }

    /**
     * @return the total
     */
    public double getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(double total) {
        this.total = total;
    }

    /**
     * @return the subtotal
     */
    public double getSubtotal() {
        return subtotal;
    }

    /**
     * @param subtotal the subtotal to set
     */
    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    /**
     * @return the observaciones
     */
    public String getObservaciones() {
        return observaciones;
    }

    /**
     * @param observaciones the observaciones to set
     */
    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
}
