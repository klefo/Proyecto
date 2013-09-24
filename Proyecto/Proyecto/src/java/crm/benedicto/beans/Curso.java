/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.beans;

/**
 *
 * @author Miguel Corzo
 */
public class Curso {
    private int IdCurso;
    private String NombreCurso;
    private int NroHoras;
    private String Estado;

    public Curso(){}
    
    public Curso(int IdCurso, String NombreCurso, int NroHoras, String Estado) {
        this.IdCurso = IdCurso;
        this.NombreCurso = NombreCurso;
        this.NroHoras = NroHoras;
        this.Estado = Estado;
    }

    /**
     * @return the IdCurso
     */
    public int getIdCurso() {
        return IdCurso;
    }

    /**
     * @param IdCurso the IdCurso to set
     */
    public void setIdCurso(int IdCurso) {
        this.IdCurso = IdCurso;
    }

    /**
     * @return the NombreCurso
     */
    public String getNombreCurso() {
        return NombreCurso;
    }

    /**
     * @param NombreCurso the NombreCurso to set
     */
    public void setNombreCurso(String NombreCurso) {
        this.NombreCurso = NombreCurso;
    }

    /**
     * @return the NroHoras
     */
    public int getNroHoras() {
        return NroHoras;
    }

    /**
     * @param NroHoras the NroHoras to set
     */
    public void setNroHoras(int NroHoras) {
        this.NroHoras = NroHoras;
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
