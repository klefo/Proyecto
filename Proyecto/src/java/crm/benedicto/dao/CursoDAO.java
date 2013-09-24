/**
 *
 * @author Miguel Corzo
 */
package crm.benedicto.dao;

import crm.benedicto.beans.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CursoDAO {

    private Connection conexion;
    ResultSet resulSet = null;

    public CursoDAO() throws Exception {
        ConnectionManager cm = new ConnectionManager();
        this.conexion = cm.getConnection();
    }

    public ArrayList<Curso> ListarCursos(Curso objCurso) throws SQLException {
        PreparedStatement comando = null;
        ArrayList<Curso> cursos = new ArrayList<Curso>();
        Curso curso;
        String sql;

        try {
            sql = "select * from Curso where (IdCurso=" + String.valueOf(objCurso.getIdCurso()) + " or " + String.valueOf(objCurso.getIdCurso()) + "=0) and ( \n"
                    + " (Nombre like '%" + objCurso.getNombreCurso() + "%') \n"
                    + " and (NroHoras =" + String.valueOf(objCurso.getNroHoras()) + " or " + String.valueOf(objCurso.getNroHoras()) + " =0) \n"
                    + " and (Estado='" + objCurso.getEstado() + "' or '" + objCurso.getEstado() + "'='-1'))";
            comando = conexion.prepareStatement(sql);
            resulSet = comando.executeQuery();

            while (resulSet.next()) {
                curso = new Curso(resulSet.getInt(1), resulSet.getString(2), resulSet.getInt(3), resulSet.getString(4));
                cursos.add(curso);
            }
        } catch (SQLException ex) {
            cursos = null;
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return cursos;
    }

    public int InsertarCurso(Curso objCurso) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int IdCurso = 0;
        int resultado = 0;

        try {
            sql = "select Max(IdCurso)+1 as Id from Curso";
            comando = conexion.prepareStatement(sql);
            resulSet = comando.executeQuery();

            while (resulSet.next()) {
                IdCurso = resulSet.getInt("ID");
            }
            if (IdCurso == 0) {
                IdCurso = 1;
            }
            objCurso.setIdCurso(IdCurso);
            //obtenemos el ultimo id registrado
            sql = "INSERT INTO Curso (IDCURSO,NOMBRE,NROHORAS,ESTADO) \n"
                    + "VALUES(" + objCurso.getIdCurso() + ",'" + objCurso.getNombreCurso() + "'," + objCurso.getNroHoras() + ",'" + objCurso.getEstado() + "')";
            comando = conexion.prepareStatement(sql);
            comando.executeUpdate();

            resultado = 1;

        } catch (SQLException ex) {
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return resultado;
    }

    public int ActualizarCurso(Curso objCurso) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int resultado;
        try {
            //actualizamos los datos del curso
            sql = "update Curso set Nombre='" + objCurso.getNombreCurso() + "',NroHoras=" + String.valueOf(objCurso.getNroHoras()) + ", Estado='" + objCurso.getEstado() + "' where IdCurso=" + String.valueOf(objCurso.getIdCurso());

            comando = conexion.prepareStatement(sql);
            comando.executeUpdate();

            resultado = 1;

        } catch (SQLException ex) {
            resultado = 0;
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return resultado;
    }

    public int EliminarCurso(Curso objCurso) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int resultado;
        try {
            //actualizamos los datos del curso
            sql = "update Curso set Estado='I' where IdCurso=" + String.valueOf(objCurso.getIdCurso());

            comando = conexion.prepareStatement(sql);
            comando.executeUpdate();

            resultado = 1;

        } catch (SQLException ex) {
            resultado = 0;
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return resultado;
    }
}
