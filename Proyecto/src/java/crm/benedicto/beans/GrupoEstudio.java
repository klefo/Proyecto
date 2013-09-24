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
public class GrupoEstudio {
    private int IdGrupoEstudio;
    private Academia OAcademia;
    private Curso OCurso;
    private Profesor OProfesor;
    private Date FechaInicio;
    private Date FechaFin;
    private String NombreGrupoEstudio;
    private String Estado;

    /**
     * @return the IdGrupoEstudio
     */
    public int getIdGrupoEstudio() {
        return IdGrupoEstudio;
    }

    /**
     * @param IdGrupoEstudio the IdGrupoEstudio to set
     */
    public void setIdGrupoEstudio(int IdGrupoEstudio) {
        this.IdGrupoEstudio = IdGrupoEstudio;
    }

    /**
     * @return the OAcademia
     */
    public Academia getOAcademia() {
        return OAcademia;
    }

    /**
     * @param OAcademia the OAcademia to set
     */
    public void setOAcademia(Academia OAcademia) {
        this.OAcademia = OAcademia;
    }

    /**
     * @return the OCurso
     */
    public Curso getOCurso() {
        return OCurso;
    }

    /**
     * @param OCurso the OCurso to set
     */
    public void setOCurso(Curso OCurso) {
        this.OCurso = OCurso;
    }

    /**
     * @return the FechaInicio
     */
    public Date getFechaInicio() {
        return FechaInicio;
    }

    /**
     * @param FechaInicio the FechaInicio to set
     */
    public void setFechaInicio(Date FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    /**
     * @return the FechaFin
     */
    public Date getFechaFin() {
        return FechaFin;
    }

    /**
     * @param FechaFin the FechaFin to set
     */
    public void setFechaFin(Date FechaFin) {
        this.FechaFin = FechaFin;
    }

    /**
     * @return the NombreGrupoEstudio
     */
    public String getNombreGrupoEstudio() {
        return NombreGrupoEstudio;
    }

    /**
     * @param NombreGrupoEstudio the NombreGrupoEstudio to set
     */
    public void setNombreGrupoEstudio(String NombreGrupoEstudio) {
        this.NombreGrupoEstudio = NombreGrupoEstudio;
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
     * @return the OProfesor
     */
    public Profesor getOProfesor() {
        return OProfesor;
    }

    /**
     * @param OProfesor the OProfesor to set
     */
    public void setOProfesor(Profesor OProfesor) {
        this.OProfesor = OProfesor;
    }
}
