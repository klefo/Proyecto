/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.logica;

import crm.benedicto.beans.Curso;
import crm.benedicto.dao.CursoDAO;
import java.util.List;

/**
 *
 * @author alumnos
 */
public class CursoLogica {

    public CursoLogica() {
    }

    public List ListarCursos(Curso CursoBE) throws Exception {
        List lCursos;
        CursoDAO obj = new CursoDAO();
        lCursos = obj.ListarCursos(CursoBE);

        return lCursos;
    }

    public int EliminarCurso(Curso CursoBE) throws Exception {
        int resultado;
        CursoDAO obj = new CursoDAO();
        resultado = obj.EliminarCurso(CursoBE);
        return resultado;
    }

    public int InsertarCurso(Curso CursoBE) throws Exception {
        int resultado;
        CursoDAO obj = new CursoDAO();

        resultado = obj.InsertarCurso(CursoBE);
        return resultado;
    }

    public int ActualizarCurso(Curso CursoBE) throws Exception {
        int resultado;
        CursoDAO obj = new CursoDAO();

        resultado = obj.ActualizarCurso(CursoBE);
        return resultado;
    }
}
