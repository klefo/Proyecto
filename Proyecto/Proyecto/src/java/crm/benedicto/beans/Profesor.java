/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

import java.util.Date;

/**
 *
 * @author Miguel Corzo
 */
public class Profesor {

    private int IdProfesor;
    private String Nombres;
    private String ApellidoPaterno;
    private String ApellidoMaterno;
    private Date FechaNacimiento;
    private String Email;
    private String Direccion;
    private String Telefono;
    private String Celular;
    private String Estado;

    public Profesor() {
    }

    public Profesor(int IdProfesor, String Nombres, String ApellidoPaterno, String ApellidoMaterno, Date FechaNacimiento, String Email, String Direccion, String Telefono, String Celular, String Estado) {
        this.IdProfesor = IdProfesor;
        this.Nombres = Nombres;
        this.ApellidoPaterno = ApellidoPaterno;
        this.ApellidoMaterno = ApellidoMaterno;
        this.FechaNacimiento = FechaNacimiento;
        this.Email = Email;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Celular = Celular;
        this.Estado = Estado;
    }

    /**
     * @return the IdProfesor
     */
    public int getIdProfesor() {
        return IdProfesor;
    }

    /**
     * @param IdProfesor the IdProfesor to set
     */
    public void setIdProfesor(int IdProfesor) {
        this.IdProfesor = IdProfesor;
    }

    /**
     * @return the Nombres
     */
    public String getNombres() {
        return Nombres;
    }

    /**
     * @param Nombres the Nombres to set
     */
    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    /**
     * @return the ApellidoPaterno
     */
    public String getApellidoPaterno() {
        return ApellidoPaterno;
    }

    /**
     * @param ApellidoPaterno the ApellidoPaterno to set
     */
    public void setApellidoPaterno(String ApellidoPaterno) {
        this.ApellidoPaterno = ApellidoPaterno;
    }

    /**
     * @return the ApellidoMaterno
     */
    public String getApellidoMaterno() {
        return ApellidoMaterno;
    }

    /**
     * @param ApellidoMaterno the ApellidoMaterno to set
     */
    public void setApellidoMaterno(String ApellidoMaterno) {
        this.ApellidoMaterno = ApellidoMaterno;
    }

    /**
     * @return the FechaNacimiento
     */
    public String getFechaNacimiento() {
        return FormateaFechaString((java.sql.Date) this.FechaNacimiento);
    }

    public Date getFechaNacimientoDate() {
        return this.FechaNacimiento;
    }

    /**
     * @param FechaNacimiento the FechaNacimiento to set
     */
    public void setFechaNacimiento(String FechaNacimiento) {
        if (FechaNacimiento != null) {
            this.FechaNacimiento = FormateaFechaDate(FechaNacimiento);
        }
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
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
     * @return the Celular
     */
    public String getCelular() {
        return Celular;
    }

    /**
     * @param Celular the Celular to set
     */
    public void setCelular(String Celular) {
        this.Celular = Celular;
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

    private static java.sql.Date FormateaFechaDate(String fecha) {
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
