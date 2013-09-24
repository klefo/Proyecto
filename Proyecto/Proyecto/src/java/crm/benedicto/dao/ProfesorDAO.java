/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.dao;

import crm.benedicto.beans.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Miguel Corzo
 */
public class ProfesorDAO {

    private Connection conexion;
    ResultSet resulSet = null;
    
    public ProfesorDAO() throws Exception {
        ConnectionManager cm = new ConnectionManager();
        this.conexion = cm.getConnection();
    }

    public ArrayList<Profesor> ListarProfesores(Profesor objProfesor) throws SQLException {
        PreparedStatement comando = null;
        ArrayList<Profesor> profesores = new ArrayList<Profesor>();
        Profesor profesor;
        String sql;

        try {
            sql = "select * from Profesor where Nombres||' '||ApellidoPaterno||' '||ApellidoMaterno like  '%" + objProfesor.getNombres() + "%'";
            comando = conexion.prepareStatement(sql);
            resulSet = comando.executeQuery();

            while (resulSet.next()) {
                profesor = new Profesor(resulSet.getInt(1), resulSet.getString(2), resulSet.getString(3), resulSet.getString(4), resulSet.getDate(5), resulSet.getString(6), resulSet.getString(7), resulSet.getString(8), resulSet.getString(9), resulSet.getString(10));
                profesores.add(profesor);
            }
        } catch (SQLException ex) {
            profesores = null;
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return profesores;
    }

    public int InsertarProfesor(Profesor objProfesor) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int IdProfesor = 0;
        int resultado = 0;

        try {
            sql = "select Max(IdProfesor)+1 as ID from Profesor";
            comando = conexion.prepareStatement(sql);
            resulSet = comando.executeQuery();

            while (resulSet.next()) {
                IdProfesor = resulSet.getInt("ID");
            }
            if (IdProfesor == 0) {
                IdProfesor = 1;
            }
            objProfesor.setIdProfesor(IdProfesor);
            //obtenemos el ultimo id registrado
            sql = "insert into Profesor(IdProfesor,Nombres,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Direccion,Telefono,Celular,Estado)\n"
                    + "VALUES (" + objProfesor.getIdProfesor() + ",'" + objProfesor.getNombres() + "','" + objProfesor.getApellidoPaterno() + "','" + objProfesor.getApellidoPaterno() + "','" + objProfesor.getFechaNacimientoDate() + "','" + objProfesor.getEmail() + "','" + objProfesor.getDireccion() + "','" + objProfesor.getTelefono() + "','" + objProfesor.getCelular() + "','"+objProfesor.getEstado()+"')";
            comando = conexion.prepareStatement(sql);
            comando.executeUpdate();

            resultado = 1;

        } catch (SQLException ex) {
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return resultado;
    }

    public int ActualizarProfesor(Profesor objProfesor) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int resultado;
        try {
            //actualizamos los datos del curso
            sql = "update Profesor\n"
                    + "    set Nombres='" + objProfesor.getNombres() + "',\n"
                    + "        ApellidoPaterno='" + objProfesor.getApellidoPaterno() + "',\n"
                    + "        ApellidoMaterno='" + objProfesor.getApellidoMaterno() + "',\n"
                    + "        FechaNacimiento='" + objProfesor.getFechaNacimientoDate() + "',\n"
                    + "        Email='" + objProfesor.getEmail() + "',\n"
                    + "        Direccion='" + objProfesor.getDireccion() + "',\n"
                    + "        Telefono='" + objProfesor.getTelefono() + "',\n"
                    + "        Celular='" + objProfesor.getCelular() + "',\n"
                    + "        Estado='" + objProfesor.getEstado() + "'\n"
                    + "where IdProfesor=" + objProfesor.getIdProfesor();

            comando = conexion.prepareStatement(sql);
            comando.executeUpdate();

            resultado = 1;

        } catch (SQLException ex) {
            resultado = 0;
            throw new SQLException("Error al realizar la operación: " + ex.getMessage());
        }
        return resultado;
    }

    public int EliminarProfesor(Profesor objProfesor) throws SQLException {
        PreparedStatement comando = null;
        String sql;
        int resultado;
        try {
            //actualizamos los datos del curso
            sql = "update Profesor\n"
                    + "    set Estado='I'\n"
                    + "where IdProfesor=" + objProfesor.getIdProfesor();

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
