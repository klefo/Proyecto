/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author alumnos
 */
public class Compras {
    private int IdCompra;
    private int IdConcepto;
    private String NumeroDocCompra;
    private Date FechaEmision;
    private Date FechaVencimiento;
    private Date FechaPago;
    private String Empresa;
    private String Estado;
    private ArrayList<DetalleCompra> ODetalleCompras;
    private Double IGV;
    private Double Total;

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
     * @return the IdConcepto
     */
    public int getIdConcepto() {
        return IdConcepto;
    }

    /**
     * @param IdConcepto the IdConcepto to set
     */
    public void setIdConcepto(int IdConcepto) {
        this.IdConcepto = IdConcepto;
    }

    /**
     * @return the NumeroDocCompra
     */
    public String getNumeroDocCompra() {
        return NumeroDocCompra;
    }

    /**
     * @param NumeroDocCompra the NumeroDocCompra to set
     */
    public void setNumeroDocCompra(String NumeroDocCompra) {
        this.NumeroDocCompra = NumeroDocCompra;
    }

    /**
     * @return the FechaEmision
     */
    public Date getFechaEmision() {
        return FechaEmision;
    }

    /**
     * @param FechaEmision the FechaEmision to set
     */
    public void setFechaEmision(Date FechaEmision) {
        this.FechaEmision = FechaEmision;
    }

    /**
     * @return the FechaVencimiento
     */
    public Date getFechaVencimiento() {
        return FechaVencimiento;
    }

    /**
     * @param FechaVencimiento the FechaVencimiento to set
     */
    public void setFechaVencimiento(Date FechaVencimiento) {
        this.FechaVencimiento = FechaVencimiento;
    }

    /**
     * @return the FechaPago
     */
    public Date getFechaPago() {
        return FechaPago;
    }

    /**
     * @param FechaPago the FechaPago to set
     */
    public void setFechaPago(Date FechaPago) {
        this.FechaPago = FechaPago;
    }

    /**
     * @return the Empresa
     */
    public String getEmpresa() {
        return Empresa;
    }

    /**
     * @param Empresa the Empresa to set
     */
    public void setEmpresa(String Empresa) {
        this.Empresa = Empresa;
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

    /**
     * @return the IGV
     */
    public Double getIGV() {
        return IGV;
    }

    /**
     * @param IGV the IGV to set
     */
    public void setIGV(Double IGV) {
        this.IGV = IGV;
    }

    /**
     * @return the Total
     */
    public Double getTotal() {
        return Total;
    }

    /**
     * @param Total the Total to set
     */
    public void setTotal(Double Total) {
        this.Total = Total;
    }

    /**
     * @return the ODetalleCompras
     */
    public ArrayList<DetalleCompra> getODetalleCompras() {
        return ODetalleCompras;
    }

    /**
     * @param ODetalleCompras the ODetalleCompras to set
     */
     void setODetalleCompras(ArrayList<DetalleCompra> ODetalleCompras) {
        this.ODetalleCompras = ODetalleCompras;
    }

        public static java.sql.Date FormateaFechaDate(String fecha) {
        String sFecha = fecha;
        java.sql.Date result;
        sFecha = sFecha.substring(6, 10) + "-" + sFecha.substring(3, 5) + "-" + sFecha.substring(0, 2);

        result = java.sql.Date.valueOf(sFecha);

        return result;
    }

    private static String FormateaFechaString(java.sql.Date fecha) {
        String result;

        result = String.valueOf(fecha);
        result = result.substring(8, 10) + "/" + result.substring(5, 7) + "/" + result.substring(0, 4);

        return result;
    }
    
}
