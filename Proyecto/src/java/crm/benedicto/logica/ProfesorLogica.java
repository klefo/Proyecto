/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.logica;

import java.util.List;
import crm.benedicto.beans.Profesor;
import crm.benedicto.dao.ProfesorDAO;

/**
 *
 * @author alumnos
 */
public class ProfesorLogica {

    public ProfesorLogica() {
    }

    public List ListarProfesores(Profesor ProfesorBE) throws Exception {
        List lCursos;
        ProfesorDAO obj = new ProfesorDAO();
        lCursos = obj.ListarProfesores(ProfesorBE);

        return lCursos;
    }

    public int EliminarProfesor(Profesor ProfesorBE) throws Exception {
        int resultado;
        ProfesorDAO obj = new ProfesorDAO();
        resultado = obj.EliminarProfesor(ProfesorBE);
        return resultado;
    }

    public int InsertarProfesor(Profesor ProfesorBE) throws Exception {
        int resultado;
        ProfesorDAO obj = new ProfesorDAO();

        resultado = obj.InsertarProfesor(ProfesorBE);
        return resultado;
    }

    public int ActualizarProfesor(Profesor ProfesorBE) throws Exception {
        int resultado;
        ProfesorDAO obj = new ProfesorDAO();

        resultado = obj.ActualizarProfesor(ProfesorBE);
        return resultado;
    }
}
